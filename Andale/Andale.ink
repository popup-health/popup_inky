// locked by ROBERT 101021 430pm PDT

// ---- PopBot: BABY .. was ANdale  Reflecting on Progress VERSION 2 ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84200
# title: PopBot: Reflecting on Progress VERSION 2
# author: Robert Gehorsam, original version by Tchiki Davis 
//https://docs.google.com/document/d/1ZlmXvKHQX9f05CJ8L2wznhPsOfSKc3IZ9bhh37Z4FBg/edit
// -----------------------------

//PP: Good job Robert! First commit done!!

VAR userName = "Robert"
VAR goalExamples = "getting into college"
VAR userInputGoal = "Getting into college!"
VAR firstBabySteps = "taking the SAT"
VAR nextBabySteps = "Keeping my grades up"


-> System_Check


==== System_Check ====
//System check
  + _if first session
        -> First_Session 
  + _if second session
        -> Second_Session   
  + _if third session or later
        -> Third_Session
        


==== First_Session ====
Hi, {userName}, I’m Andale. I’m an expert on setting goals and making progress on those goals. 
But sometimes it can be a bit tricky to set a goal that is easy to work on and it helps to understand some basic principles. Would you like to know more?
  + Please share!
  Happy to!
        -> Goal_explanation 
  + No, I'm ready to try.
  Let's do it! <>
        -> First_goal_setting_practice 

==== First_goal_setting_practice ====
Start by thinking of one goal that matters to you.
  + I've got one.
        -> First_goal 
  + I can't think of goal.
        -> thereAreLotsOfDi 

= thereAreLotsOfDi
There are lots of different types of goals. Your goals might include something related to your career, your relationship, your family, your community, or yourself. All goals count: things like keeping to a workout regimen, studying for an exam, or simply spending more time with friends.
  + OK, thought of a goal.
        -> greatDoYouWantTo 
  + More examples, please.
        -> listOfGoalExampl 
  + This isn't working for me.
        -> dontWorryAboutIt 

= greatDoYouWantTo
Great! Do you want to share it?
  + User enters input here
        -> userInput 
  + Not right now
        -> oKNowTakeAMinute 

= listOfGoalExampl
{goalExamples}
  + Got it
        -> greatDoYouWantTo 

= dontWorryAboutIt
Don’t worry about it. If we’re feeling stressed it can be hard to focus on exercises like this. For now, maybe a visit with one of my friends will help. 
    -> Random_bot_selection

= userInput
{userInputGoal}
    -> oKNowTakeAMinute

= oKNowTakeAMinute
OK!  Now, take a minute to think of one step or action you took to reach this goal.
  + I've got it
        -> First_goal.nextSeeIfYouCanI 
  + I'm not sure
        -> First_goal.evenTinyStepsMov 

==== Goal_explanation ====
A well-defined goal is one that reflects your values and is important to you.  It should also be measurable, able to be broken down into smaller pieces or sub-goals, and be something that you can put a timeframe on.  
  + OK, I have one.
        -> First_goal 
  + I can’t think of one
        -> First_goal_setting_practice.thereAreLotsOfDi 

==== Random_bot_selection ====
random selection of another bot
    -> END

==== First_goal ====
{Great!|Super!|Nice!} Do you want to share it?
  + Not right now.
        -> oKKeepItInMindAs 
  + user enters input here
        -> userInputsAGoal 

= oKKeepItInMindAs
OK, keep it in mind as you think of one step or action you took to reach this goal.
  + Got it.
        -> nextSeeIfYouCanI 
  + I'm not sure.
        -> evenTinyStepsMov 

= userInputsAGoal
{userInputGoal}
    -> seeIfYouCanThink

= seeIfYouCanThink
Actually, did you know that even just identifying your goal -- like we did just now -- has been shown to help us more easily achieve it?
    + Like a baby step!
    Exactly!
    -> pastBabyStep

=pastBabyStep
So now see if you can think of one tiny thing you've already done to reach your goal of {goalExamples}. 
  + OK, I remember one.
  Excellent.
        -> Next_steps 
  + I need examples.
        -> insertFirstBabyS 

= nextSeeIfYouCanI
Next, going forward, see if you can identify one baby step you can take in the next few days to get even slightly closer to your goal.
  + Got it!
        -> Next_steps.greatThatsItForT 
  + Examples, please?
        -> InsertVariableBa 

= evenTinyStepsMov
Even tiny steps move you towards your goal. If your goal was to go to the gym, maybe you bought a pair of sneakers, or looked up nearby gyms to go to. 
    -> seeIfYouCanThink

= InsertVariableBa
_ insert variable BabyStepsExample
  + I got it
        -> Next_steps.greatThatsItForT 
  + I can't think of anything
        -> dontWorryAboutIt1 

= insertFirstBabyS
{firstBabySteps}
  + Got it
        -> nextSeeIfYouCanI 
  + I can't think of anything
        -> dontWorryAboutIt1 

= dontWorryAboutIt1
Don't worry about it.  It could pop up in your mind later.
    -> END

==== Next_steps ====
Next, looking forward, see if you can identify one baby step you can take in the next few days to get even slightly closer to your goal.
  + Got it.
        -> greatThatsItForT 
  + Such as...?
        -> babySteps 

= greatThatsItForT
Great, those are excellent baby steps you've taken today.  So just take a moment to give yourself a little pat on the back for doing this exercise. You've gotten started, and that's often the hardest part.
  + Done.
        -> niceJobIfYouCome 

= babySteps
{firstBabySteps}
    -> niceJobIfYouCome

= niceJobIfYouCome
Nice job! If you come back and see me, we’ll talk about how this next baby step went. I hope to see you again soon.
  + Bye!
        -> endFirstSession 

= endFirstSession
//go to farewell
    -> END
    
==== Second_Session ====
//system checks if first session engagement were positive/neutral *or* negative
  + if positive or neutral
        -> SecondSessionPositiveOrNeutral.positiveOrNeutral
  + if negative
        -> negativeSecondSession
        
        
==== SecondSessionPositiveOrNeutral ====

= positiveOrNeutral
{userName}, I'm glad you're back.  Reflecting on progress is an exercise that works better the more we do it.
Last time we chatted you decided to take one baby step towards your goal. Were you able to do that?
    + I took a step!
        -> SecondSessionReflectingOnAction.reflectingOnAnAction
    + I didn't.
        -> SecondSessionReflectingonNoAction.reflectingOnNoAction
        
==== SecondSessionReflectingOnAction ====

= reflectingOnAnAction
Excellent. So, what did it feel like to take this baby step?
    + It felt OK
        -> itFeltOk
    + It was hard
        -> itFeltOk
    + Not sure yet.
    Sometimes it takes time.
        -> itFeltOk

= itFeltOk 
Next, ask yourself, is there anything you can learn from having taken this action?
Would you do something differently next time?  Or maybe this action has prepared you for the next step?

Reflect on the action you took and then decide what your next baby step will be.
    + OK, I'm ready.
        -> okImReady
    + I need examples, please.
        -> findnextBabySteps
        
= findnextBabySteps
{nextBabySteps}
    +OK that helped.
        -> okImReady        

= okImReady
{Good!|OK!|Nice!|} Would you like a reminder to help you out?
    + Yes, by calendar
        -> yesByCalendar
        
    + Yes, by text message
        -> yesByText
        
= yesByCalendar
OK, tomorrow or next week? (initiate calendar entry process)
    -> secondSessionEndPositive.YoureOnTheRightPath
= yesByText
OK, tomorrow or next week? (initiate text entry process)
    -> secondSessionEndPositive.YoureOnTheRightPath



====SecondSessionReflectingonNoAction====

= reflectingOnNoAction
    OK, no worries.  Busy schedules and full brains can make it tough to do all the things we want to do.
    
    Take a minute to think about how you'll make sure you take that one baby step. We can explore it next time we chat.
        +OK, I have one.
            -> okImReady
            
        +Some examples please?
            -> findnextBabySteps
            
= okImReady
    + I'm ready.
        -> secondSessionEndPositive.YoureOnTheRightPath



=findnextBabySteps
{nextBabySteps}
    +OK that helps.
        -> okImReady        

            
        
====secondSessionEndPositive====

= YoureOnTheRightPath
You're on the right path.  Any time you take a step towards your goal, take a minute to reflect on your progress. It can really give you a little self-esteem boost and keep you on the right track.
    + Understood
        -> Understood
        
= Understood
Bye! //gotoFarewellModule


    -> END

====negativeSecondSession====
Hi {userName}, thanks for coming back. Let's try this again to see if we can find some useful reflections.
 Do you want to try one more time, or talk to one of my pals?
    + Try again
        -> great2
    + Talk to a pal
        -> sureIWillCallOne

= great2
Last time we talked you decided to take one baby step towards your goal.
Did you take that baby step?
Were you able to do that?
    + I took a step!
        -> SecondSessionReflectingOnAction.reflectingOnAnAction
    + I didn't.
        -> SecondSessionReflectingonNoAction.reflectingOnNoAction


 = sureIWillCallOne
Sure, I will call one of them now.
// System selects a new character at random //
  -> END  

    
==== Third_Session ====
//system checks if previous session engagement were positive/neutral *or* negative
  + if positive or neutral
        -> positiveOrNeutral3
  + if negative
        -> negativeSecondSession.sureIWillCallOne
        
        
= positiveOrNeutral3
Hi there {userName}.  I'm glad you're back.  I'm looking forward to doing more reflections with you.

Do you want a refresher to reflect on your progress?
    + sure
        -> First_goal_setting_practice.thereAreLotsOfDi 
    + Not now
    OK, let's talk more about goals and baby steps!
        -> thirdSessionLesson
        
=thirdSessionLesson
Great. Have you had a chance to practice more baby steps for your goal?
    + Yes!
    That's the way to do it!
        -> thirdSession_Goal_Review
    
    + Not lately

=thirdSession_Goal_Review
And are you finding that these baby steps help you make progress towards your goal?
    + I do.
The good news keeps coming ✨
    -> start_Reflection
    
= start_Reflection
Even though our chats have talked about the importance of baby steps, 

    -> END