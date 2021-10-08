// ---- Doom ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84290
# title: Doom
# author: by Pablo Paredes
// -----------------------------

VAR userName = "Pablo"
VAR worstFear = "will not make deadline for paper"
VAR fearSolution = "I can at least make a first pass"

-> System_check


==== System_check ====
//system checks for visit number
  + First visit
        -> First_visit 
  + Second visit
        -> Second_visit 
  + Third visit
        -> Third_visit 


==== First_visit ====
Hi {userName}, my name is Doom Bot. I am an expert in using worst-case scenarios to help my friends realize that their situation may not as bad as they think... ://FV: Hi {userName}, my name is Doom Bot. I'm an expert in using worst-case scenarios to help my friends realize that the situation they are worrying about may not be as bad as they think... 
    -> whatDoYouThinkIs

= whatDoYouThinkIs
What do you think is the worst-case scenario for what you’re going through? Feel free to share it or simply think about it. 
//FV: I would ask first: What is the situation that is worrying you? This first questions helps the user clarify their ideas and put into words what is worrying them. 
//FV: Then would think about adding an option for empathizing: "I know that feeling of worrying, it sometimes feels like the worst things could happen..." 
//FV: And then I would ask: "What do you think is the worst-case scenario...."
  + Don't want to share
        -> Rate_fear 
  + User enters worst case scenario (WCS) here
        -> Enter_fear 

==== Enter_fear ====
{worstFear}
    -> Rate_fear

==== Rate_fear ====
Ok, on a scale of 1 (impossible) to 10 (certain), how likely is that worst-case scenario?
  + display a slider or multiple quick choice options from 1 to 10
        -> likelihoodFear 

= likelihoodFear
{likelihoodFear}
  + IF likelihoodFear <= 5
        -> soWouldYouAgreeT 
  + IF likelihoodFear >5
        -> Fear_solution 

= soWouldYouAgreeT
So would you agree that this scenario is unlikely?
  + Yes
        -> oK 
  + Not sure
        -> itsOK 
  + No
        -> letsThinkAboutTh 

= oK
OK.
    -> sometimesItsHelp

= itsOK
It's OK.
    -> letsThinkAboutTh

= letsThinkAboutTh
Let's think about this together: think of one tiny step you could take if your worst-case scenario happens. 
Remember, there’s no right or wrong answer to this question. Any small action could lead you towards the right direction. 
Feel free to share if you want me to remind you in the future about this idea. //FV: I would add this part of remind you in the future after they have answered about sharing. 
  + Don't want to share
        -> sometimesItsHelp 
  + User enters tiny solution here
        -> fearSolution1 

= sometimesItsHelp
Sometimes it’s helpful to realize that our worries aren’t always as likely as we think they are. 
//FV: I would add one sentence about the importance of this work. Something like: "Our minds tend to catastrophize, but that only drains us and does not let us have new ideas and move forward." 
    -> Enter_solution.doYouWantMeToRem

= fearSolution1
{fearSolution}
    -> sometimesItsHelp

==== Fear_solution ====
Alright, in the case that this happens, think what could you do to be in a better state. Again, feel free to share if you want. We can 
//FV: I would make a pause here and acknowledge that worrying in this cases can be productive if we use it to prepare better for the situation. 
//FV: Something like: "Ok, now that you know this worst-case scenario could happen, let's prepare for it ...." or "In cases like this we can use worrying as a signal that we need to prepare ourselves for what could come" 
//FV: The idea of "what could you do to be in a better state" feels a little vague. Here we could provide examples or ask a more specific question like the one in "letsthinkaboutthis": think of one tiny step you could take if your worst-case scenario happens.... 
  + Don't want to share
        -> noProblem 
  + User enters solution here.
        -> Enter_solution 

= noProblem
No problem.
    -> Enter_solution.doYouWantMeToRem

==== Enter_solution ====
{fearSolution}
    -> doYouWantMeToRem

= doYouWantMeToRem
Do you want me to remind you of this solution in the future?
  + Yes
        -> oKWhenDoYouWantM 
  + No
        -> Reassurance 

= oKWhenDoYouWantM
OK, when do you want me to text you?
  + Tomorrow
        -> willDoSureOfCour 
  + Next week
        -> willDoSureOfCour 
  + Let me chose a date
        -> yesPleasePickADa 

= willDoSureOfCour
{Will do!|Sure|Of course}
    -> solutionDate

= yesPleasePickADa
Yes, please pick a date:
  + User selects a date from the data selector here.
        -> solutionDate 

= solutionDate
{solutionDate}
    -> Reassurance

==== Reassurance ====
Even though you cannot control everything, just remember that there is always a way to get back on your feet.
Thanks for chatting with me, {userName}. I hope this worst case scenario technique worked for you.
// go to Farewell module
    -> END
    

==== Second_visit ====
//system checks last engagement score
  + past engagement positive/neutral
        -> iAmGladWeAreConn 
  + past engagement negative
        -> evenThoughLastTi 

= iAmGladWeAreConn
I am glad we are connecting again. I hope last time you were able to use our powers of fear destruction!
Let's practice them again!
    -> First_visit.whatDoYouThinkIs

= evenThoughLastTi
Even though last time wasn't ideal, I am confident that I could help you reduce your fears. 
    -> Third_visit.doYouWantToTryAg

==== Pick_another_bot ====
// select a new bot at random
    -> END



==== Third_visit ====
//system checks past engagement
  + past engagement was positive/neutral
        -> youAreBecomingAn 
  + past engagement was negative
        -> lastTimeWasNotId 

= youAreBecomingAn
You are becoming an expert at eliminating catastrophes! Do you want me to guide you through the technique again, or do you feel you can do it by yourself?
  + Guide me
        -> sureHappyToOfCou 
  + I can do it
        -> User_does_technique_alone 

= lastTimeWasNotId
Last time was not idea, but believe me, we are making progress towards crushing catastrophes. I suggest we keep at it!
//FV: ideal 
    -> doYouWantToTryAg

= sureHappyToOfCou
{Sure!|Happy to!|Of course}
    -> First_visit.whatDoYouThinkIs

= doYouWantToTryAg
Do you want to try again?
  + No, give me another bot
        -> Pick_another_bot 
  + Ok
        -> thisTimeBeforeWe 

= thisTimeBeforeWe
This time, before we assess your fear, tell me how far in the future would it occur?
  + Later today
        -> evenIfItIsImmine 
  + Tomorrow
        -> letsBeginByTryin 
  + Later in the week/month
        -> letsBeginByTryin 

= evenIfItIsImmine
Even if it is imminent, we can do something about it. 
    -> letsBeginByTryin

= letsBeginByTryin
Let's begin by trying not to travel to that moment, and stay in the present. 
Take a deep breath, and let's again assess your fear.
    -> First_visit.whatDoYouThinkIs

==== User_does_technique_alone ====
Cool. Remember, stay in the present, evaluate the likelihood of the event, and try to find a simple solution you can do in the present.
I will leave you to it. Let me know when you are done.
  + Done
        -> greatDoYouWantTo 

= greatDoYouWantTo
Great, do you want to share what was your fear?
  + Nope
        -> oKDoYouWantToSha 
  + Yes
        -> okGoAhead 

= oKDoYouWantToSha
OK. Do you want to share solution in case you want me to remind you in the future?
  + Don't want to share
        -> noProblemRemembe 
  + User enters solution here
        -> enterFearSolution 

= okGoAhead
Ok, go ahead:
  + User enters fear here
        -> enterWorstFear 

= noProblemRemembe
No problem. Remember...
    -> Reassurance

= enterWorstFear
{worstFear}
    -> oKDoYouWantToSha

= enterFearSolution
{fearSolution}
    -> Enter_solution.oKWhenDoYouWantM

