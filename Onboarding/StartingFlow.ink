INCLUDE onboardingv4.ink
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
//for testing of flow

+user visit 1 (onboarding sequence)
->greeting1
+user visit 2 (1st session after onboarding session)
->greeting2
+user visit 3 (2nd session after onboarding session)
->greeting3


