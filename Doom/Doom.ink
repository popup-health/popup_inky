//LOCKED BY MIRANDA
// ---- Doom ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84290
# title: Doom
# author: by Pablo Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor1 = "I am stressed about a paper I am writing" //this is the stressor recorded for the first session in the greeting module
VAR stressor2 = "Not finding enough funding for my company" //this is the stressor recorded for the first session in the greeting module
VAR worstFear = "will not make deadline for the paper, and will have to wait one more year to submit it"
VAR fearSolution = "I can at least make a first pass at the paper"
VAR likelihoodFearVar = "2"

-> System_check


==== System_check ====
//system checks for visit number
  + First visit
        -> First_visit 
  + Second visit
        -> Second_visit 
  + Third visit
        -> Third_visit 


//***********************************************************************//


==== First_visit ====
Hi {userName}, my name is Doom. I like using worst-case scenarios to help my friends realize that their situation they are worrying about may not as bad as they think
    -> whatDoYouThinkIs

= whatDoYouThinkIs
I heard that you told my colleagues about this stressful situation: "{stressor1}" //stressor is taken from the Greeting module
I know that feeling of worrying, it sometimes feels like the worst things could happen...
    -> worstCase

=worstCase
What do you think is the worst-case scenario for the situation you are going through? 
Feel free to share it or simply think about it. 
  + Don't want to share
        -> Rate_fear 
  + User enters worst case scenario here
        -> Enter_fear 

==== Enter_fear ====
{worstFear}
    -> Rate_fear

==== Rate_fear ====
Ok, on a scale of 1 (impossible) to 10 (certain), how likely is that worst-case scenario?
  + multiple quick choice options from 1 to 10
        -> likelihoodFear 

= likelihoodFear
{likelihoodFearVar}
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

= oK
OK.
    -> sometimesItsHelp

= itsOK
It's OK. I just asked because you had rated your fear with a {likelihoodFearVar}/10, which is below the middle point of that scale.
    -> letsThinkAboutTh

= letsThinkAboutTh
Let's think about this together: think of one tiny step you could take if your worst-case scenario happens. 
Remember, there’s no right or wrong answer to this question. Any small action could lead you towards the right direction. 
Feel free to share if you want.
  + Don't want to share
        -> sometimesItsHelp 
  + User enters tiny solution here
        -> fearSolution1

= sometimesItsHelp
Sometimes it’s helpful to realize that our worries aren’t always as likely as we think they are. 
Our minds tend to catastrophize, but that only drains us and does not let us have new ideas and move forward.
    -> Reassurance

= fearSolution1
{fearSolution}
    -> sometimesItsHelp

==== Fear_solution ====
In cases like this we can use worrying as a signal that we need to prepare ourselves for what could come. 
    -> Rate_fear.letsThinkAboutTh

==== Enter_solution ====
{fearSolution}
    -> Reassurance 

==== Reassurance ====
Even though you cannot control everything, just remember that worries are just probabilities, and that they can be used to be prepared to deal with upcoming challenges.
Thanks for chatting with me, {userName}. I hope this worst case scenario technique worked for you.
// go to Farewell module
    -> END


//*******************************************************//


==== Second_visit ====
//system checks last engagement score
  + past engagement positive/neutral
        -> iAmGladWeAreConn 
  + past engagement negative
        -> evenThoughLastTi 

= iAmGladWeAreConn
I am glad we are connecting again. I hope last time you were able to use our powers of fear reduction!
Let's practice them again!
    -> checkPastSolution
    
= checkPastSolution
//system checks if there was a past {fearSolution}
  + past fear solution
        -> past_fearSolution
  + no past fear solution
        -> no_past_fearSolution
        
= past_fearSolution
But before that, how did your idea of "{fearSolution}" work out to reduce your worries related to "{stressor1}"?
  + Worked well
    -> worked_well
  + Didn't work that well
    -> didnt_work

= worked_well    
Great to hear! Let's keep up the good work then!
    -> newStressor

= didnt_work
Sorry to hear that. Comfronting our fears can be scary.
    -> newStressor
= no_past_fearSolution
    -> newStressor

= newStressor
This time, before we assess your fear related to "{stressor2}", tell me how far in the future would this occur?
  + Today
        -> evenIfItIsImmine 
  + Tomorrow
        -> tomorrow 
  + Next week/month
        -> nextMonth

= evenIfItIsImmine
Even if it is imminent, we can do something about it. 
    -> letsBeginByTryin

= tomorrow
Assessing the worries of a future event is harder.
    -> letsBeginByTryin

= nextMonth
The farther in the future an event is, the harder it is for us to assess our emotions about it.
    -> letsBeginByTryin

= letsBeginByTryin
Let's begin by trying not to travel to that moment, and stay in the present. 
Take a deep breath, and let's again assess your fear.
    -> First_visit.worstCase

= evenThoughLastTi
Even though last time wasn't ideal, I am confident that I could help you reduce your fears. 
    -> Third_visit.doYouWantToTryAg

==== Pick_another_bot ====
// select a new bot at random
    -> END


//*******************************************************//


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
Last time was not ideal, but we are making progress towards controlling catastrophes. I suggest we keep at it!
//FV: ideal 
    -> doYouWantToTryAg

= sureHappyToOfCou
{Sure!|Happy to!|Of course}
    -> Second_visit.checkPastSolution

= doYouWantToTryAg
Do you want to try again?
  + No, give me another bot
        -> Pick_another_bot 
  + Ok
        -> thisTimeBeforeWe 

= thisTimeBeforeWe
    -> Second_visit.newStressor

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
    -> Reassurance

