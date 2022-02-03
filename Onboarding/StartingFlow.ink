//THIS FILE IS THE ROOT OF THE NON-INTERVENTION PIECES
//WHEN THE USER GOES TO AN INTERVENTION IN BETWEEN, IT IS INDICATED IN CAPITALS

INCLUDE onboarding.ink
INCLUDE StressID.ink
INCLUDE Evaluate.ink
INCLUDE farewell.ink
INCLUDE assignBot.ink
INCLUDE progression.ink
INCLUDE greeting.ink

VAR username = "Miranda"
VAR stressLevel = 0
VAR stressOngoing = 0
VAR stressLength = 0
VAR userStressInput = "I have started too late on my assignment and I'm scared I will fail."
VAR userNoBanter = 0

->UserVisitNumber

===UserVisitNumber
//For testing of the different pieces, we can choose here which user visit it is.

+user visit 1 (goes to onboarding)
//very first visit of a user. After greeting 1 they will go to onboarding
[FLECTA ALONE]
->greeting1
+user visit 2 (1st session after onboarding session)
//second visit of user. Goes to greeting 2
->greeting2
+user visit 3 (2nd and further sessions after onboarding)
//third and any further visits
->greeting3


