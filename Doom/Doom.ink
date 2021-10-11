// ---- Doom ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84290
# title: Doom
# author: by Pablo Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor1 = "I am stressed about a paper I am writing" //this is the stressor recorded for the first session in the greeting module
VAR stressor2 = "Not finding enough funding for my company" //this is the stressor recorded for the second session in the greeting module
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
Hi {userName}, my name is Doom. Let me tell you a bit about myself.
My favourite thing? Worst-case scenarios! 
I use them to help people realize that what they worry about may not be as bad as they think.
+ Interesting!
+ Sounds intriguing
    - -> whatDoYouThinkIs

= whatDoYouThinkIs
Some of the others told me about something you're stressed about. You said: "{stressor1}" //stressor is taken from the Greeting module
Very recognizable. Sometimes it feels like the worst thing could happen...
    +Yes, it does
    +Can you help?
        - Let's try out my technique.
         -> worstCase

=worstCase
What do you think is the worst thing that could happen in your situation? 
Feel free to share it or simply think about it. 
  + Don't want to share
    That's OK.
        -> Rate_fear 
  + User enters worst case scenario here
    Thank you for sharing. 
        -> Enter_fear 

==== Enter_fear ====
{worstFear}
    -> Rate_fear

==== Rate_fear ====
Now, on a scale of 1 (impossible) to 10 (certain), how likely is that worst-case scenario?
        -> selector 

=selector
    + 0
    ~ likelihoodFearVar = 0
    + 1
    ~ likelihoodFearVar = 1
    + 2
    ~ likelihoodFearVar = 2
    + 3
    ~ likelihoodFearVar = 3
    + 4
    ~ likelihoodFearVar = 4
    + 5
    ~ likelihoodFearVar = 5
    + 6
    ~ likelihoodFearVar = 6
    + 7
    ~ likelihoodFearVar = 7
    + 8
    ~ likelihoodFearVar = 8
    + 9
    ~ likelihoodFearVar = 9
    + 10
    ~ likelihoodFearVar = 10
    - -> likelihoodFear


= likelihoodFear
    + {likelihoodFearVar <= 5}
            -> soWouldYouAgreeT 
    + {likelihoodFearVar >5}
            -> Fear_solution 
    
    = soWouldYouAgreeT
    You rated your worst case situation at {likelihoodFearVar}. Think about that. 
    Would you agree that this scenario is unlikely?
      + Yes
        OK. ->sometimesItsHelp
    
      + Not sure
        That's fine.
            -> itsOK 
    
    
    = itsOK
    I asked because you rated your worst case fear at {likelihoodFearVar}/10. This is reasonably low.
        -> letsThinkAboutTh
    
    = letsThinkAboutTh
    
    Think of one tiny step you could take if your worst-case scenario happens.
    Any small action that could lead you forward. Remember, there’s no right or wrong answer to this question. 
    Feel free to share if you want.
      + Don't want to share
        No problem.
            -> sometimesItsHelp 
      + User enters tiny solution here
        A good thought.
            -> fearSolution1
    
    = sometimesItsHelp
    Sometimes it’s helpful to realize that our worst fears aren’t always as likely to happen as we think they are. 
    Our minds tend to catastrophize. That just drains us and blocks new ideas to move forward.
     +I see
     +Tell me more
        - -> Reassurance
    
    = fearSolution1
    {fearSolution}
        -> sometimesItsHelp

==== Fear_solution ====
In cases like this worrying, is a signal that we need to prepare ourselves for what could come.
Let's look at it together and try something out.
    + Great
    + I'll try
    - -> Rate_fear.letsThinkAboutTh

==== Enter_solution ====
{fearSolution}
    -> Reassurance 

==== Reassurance ====
You cannot control everything, but remember: worries are just things that "may happen".
You can use them to prepare and be ready to deal with upcoming challenges.
Thanks for chatting with me, {userName}. I hope this worst case scenario technique helped a little.
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
    Good to see you again. I hope you were able to use our powers of fear reduction last time!
    Let's practice this again!
        -> checkPastSolution
        
    = checkPastSolution
    //system checks if there was a past {fearSolution}
      + past fear solution
            -> past_fearSolution
      + no past fear solution
            -> no_past_fearSolution
            
    = past_fearSolution
    Before we start, how did your idea of "{fearSolution}" work out to reduce your worries abou "{stressor1}"?
      + It worked well
        -> worked_well
      + Didn't work that well
        -> didnt_work
    
    = worked_well    
    Great to hear! Let's keep up the good work!
        -> newStressor
    
    = didnt_work
    Sorry to hear that. Confronting our fears can be really hard.
        -> newStressor
    = no_past_fearSolution
        -> newStressor
    
    = newStressor
    Before we talk about your fear related to "{stressor2}", can you tell me how far in the future it would occur?
      + Today
            -> evenIfItIsImmine 
      + Tomorrow
            -> tomorrow 
      + Next week/month
            -> nextMonth
    
    = evenIfItIsImmine
    Even if it is really close, we can do something about it. 
        -> letsBeginByTryin
    
    = tomorrow
    Assessing the worries of a future event is harder.
        -> letsBeginByTryin
    
    = nextMonth
    If an event is far in the future, it becomes harder for us to assess our emotions about it.
        -> letsBeginByTryin
    
    = letsBeginByTryin
    Let's try for now not to travel to that moment, and stay in the present. 
    Take a deep breath, and let's assess your fear again.
        -> First_visit.worstCase
    
    = evenThoughLastTi
    Even though last time wasn't ideal, I am confident that I can help you reduce your fears. 
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
You are becoming an expert at eliminating worst case scenarios! 
Do you want me to guide you through the technique again, or do you feel you can do it by yourself?
  + Guide me
        -> sureHappyToOfCou 
  + I can do it
        -> User_does_technique_alone 

= lastTimeWasNotId
So you're last visit was maybe not ideal, but we are making progress towards controlling worst case scenarios. I'd say we keep at it!
    -> doYouWantToTryAg

= sureHappyToOfCou
{Sure!|Happy to!|Of course}
    -> Second_visit.checkPastSolution

= doYouWantToTryAg
Do you want to try again?
  + No, talk to other bot
        -> Pick_another_bot 
  + All right
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

