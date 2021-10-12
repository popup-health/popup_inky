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
//MV - changed the infant sentence, though it sounded bit strange
//MV - adapted last sentence to lead better into choice
Hi, {userName}, I’m called Baby. Why, you ask? Well, because I’m an expert on setting goals and making progress on those goals... and that means taking baby steps! 
Sometimes it can be a bit tricky to set a goal that is easy to work on. It helps to understand some basic principles. 
Would you like to know more or go ahead and try?
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
  + I can't think of one.
        -> thereAreLotsOfDi 

= thereAreLotsOfDi
//MV - shortened slightly, replaced "regimen"
There are lots of different types of goals. Your goals could be related to your career, your relationship, your family, your community, or yourself. All goals count: things like keeping to a workout schedule, studying for an exam, or simply spending more time with friends.
  + OK, thought of a goal.
        -> greatDoYouWantTo 
  + More examples, please.
        -> listOfGoalExampl 
  + This isn't working for me.
        -> dontWorryAboutIt 

= greatDoYouWantTo
//MV - replaced "it" by "your goal" to lead better into choices
Great! Do you want to share your goal now?
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
//MV shortened slightly
A well-defined goal reflects your values and is important to you.  It should be measurable, able to be broken down into smaller pieces or sub-goals, and be something that you can put a timeframe on.  
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
//rephrased to make more active and reduce the "has been shown to" research angle.
Actually, did you know that even just identifying your goal -- like we did just now -- can help us to achieve it more easily?
    + Like a baby step!
    Exactly! Identifying a goal is a baby step.
    -> pastBabyStep

=pastBabyStep
So now see if you can think of one tiny thing you've already done to reach your goal of {goalExamples}. 
  + OK, I remember one.
  Excellent.
        -> Next_steps 
  + I need examples.
        -> insertFirstBabyS 

= nextSeeIfYouCanI
Next, going forward, try to identify one baby step you can take in the next few days to get even slightly closer to your goal.
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
//MV - seems to end a bit abruptly. Should we lead into talking to another bot, or coming back?
Don't worry about it.  It could pop up in your mind later.
    -> END

==== Next_steps ====
Looking forward, can you identify one baby step you can take in the next few days to get even slightly closer to your goal?
  + Yes, got it.
        -> greatThatsItForT 
  + Such as...?
        -> babySteps 

= greatThatsItForT
Great, those are excellent baby steps you've taken today.  So just take a moment to give yourself a little pat on the back for doing this exercise. You've started, and that's often the hardest part.
  + Done.
        -> niceJobIfYouCome 

= babySteps
{firstBabySteps}
    -> niceJobIfYouCome

= niceJobIfYouCome
Nice job! That's your second baby step just in this little chat!  So let's pause and reflect on this progress.
//MV - should we say "when" instead of "if"? Like we expect them to come back?
when you come back and see me, we’ll talk about how this next baby step went. Really interested to hear how things will go!
  + Bye!
  See you!
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
//MV - shortened choice to 20 chars
Now, ask yourself, is there anything you can learn from having taken this action?
Would you do something differently next time?  Or maybe this action has prepared you for the next step?
Reflect on the action you took and then decide what your next baby step will be.
    + OK, I'm ready.
        -> okImReady
    + Examples, please.
        -> findnextBabySteps
        
= findnextBabySteps
//MV - I am unsure how this will work? Do we just provide them with random examples that may have nothing to do with the goal they entered? 
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
        +OK, I am ready.
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
//MV - added a bit of text to acknowledge negative feedback
Hi {userName}, thanks for coming back. I'm sorry our previous chat did not completely work out for you. Let's try this again to see if we can find some useful reflections.
 Do you want to try one more time, or talk to one of my pals?
    + Try again
        -> great2
    + Talk to a pal
        -> sureIWillCallOne

= great2
//MV - actually this could also not have happened in one of the flow options (if they consistently answer they don't know what to say) 
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
    -> thirdSessionNegative
    
= thirdSessionNegative
I know this has not moved forward the way you might have hoped. Would you like to start again, continue with today's topics, or talk to one of my pals?

    + Start again
        -> First_goal_setting_practice
    
    + Continue
        -> thirdSessionLesson
        
    + Talk to a pal
        -> negativeSecondSession.sureIWillCallOne
        
        
= positiveOrNeutral3
Hi there {userName}.  I'm glad you're back.  I'm looking forward to doing more reflections with you.

Do you want a refresher to reflect on your progress?
    + Sure
        -> First_goal_setting_practice.thereAreLotsOfDi 
    + Not now
    OK, let's talk more about goals and baby steps!
        -> thirdSessionLesson
        
=thirdSessionLesson
//MV - removed 'great' as did not it after previous text
Have you had a chance to practice more baby steps for your goal?
    + Yes!
    That's the way to do it!
        -> thirdSession_Goal_Review
    
    + Not lately
Not a problem. 
        -> didNotPractice
        
= didNotPractice
Let me guess:  you didn't practice because you achieved your goal!
    + Well, not quite.
Not a problem. I'm sure you are keeping the idea of baby steps in mind. So I have one more thing to talk to you about today.
    -> start_Reflection

    + I did!
    Bravo!
        -> thirdSession_Goal_Review

=thirdSession_Goal_Review
And you found that these baby steps helped you make progress towards your goal?
    + I do.
The good news keeps coming ✨
    -> start_Reflection
    
= start_Reflection
Even though our chats have talked about the importance of baby steps, it's good to think of all those baby steps as part of that big effort to achieve your goal.

That process of reflection really helps you see where you have come from. 
    + How so?
It comes in two ways.
    -> twoReflectionPaths
    
= twoReflectionPaths
You've already been reflecting on each of your baby steps and how they might help you achieve your goals.

But that's not the only way to reflect on your goals. 
    + Really?
That's right. 
    -> longTermReflection1
    
= longTermReflection1
//MV - complex sentence, had to read a few times.
We can also reflect over longer timeframes. For example, we can see if there are patterns about how we've approached the whole process of setting goals.  

Having some distance from experiences lets us reflect on them without emotions that could otherwise cloud a person's judgement.
    + How do I do this?
        -> longTermReflection2
        
=longTermReflection2
You might like to have a little structure for this.  Decide if you want to reflect on the previous day, or week, or longer.  Then you can do a couple of things.
    -> longTermReflection3
    
= longTermReflection3
Ask yourself questions like "What were my biggest challenges and highlights over this past period of time?"   Perhaps you can connect some of your baby steps to these challenges and highlights.
    + I see. Any other tips?
You had to ask? 🤣
    -> longTermReflection4
    
= longTermReflection4
You can be more detailed about specific topics. For example, you could reflect on situations where your efforts helped other people, and they responded kindly to that.  Or a moment where you really had to use some analytical skills to solve a problem you hadn't encountered before.  
    + Thanks
        -> thirdSessionRecap1
        
= thirdSessionRecap1
Now it's a good time to reflect on our chats!  Looking back, we talked about understanding what makes for a good goal.

A well-defined goal is one that reflects your values and is important to you.  It should also be measurable, able to be broken down into smaller pieces or sub-goals, and be something that you can put a timeframe on.

And you were able to define one for yourself!
    + I did!
    -> thirdSessionRecap2
    
= thirdSessionRecap2
Then we talked about turning those smaller pieces into sub-goals and making them your baby steps.

And finally, here we are, putting it all together with the process of reflection.  
    + Anything else?
        -> thirdSessionRecap3
    
= thirdSessionRecap3
Like many of my other pals say, this is a lifelong process of practice and learning. There will always be new situations, but these techniques can help you figure out how to achieve any goal, big or small.  

Last but not least, let me leave you with an article that can also give you some more details on all of this. INSERT HYPERLINK IN THE COMMENTS HERE, BUT THE TEXT SHOULD READ "Goals, Objectives, and Reflective Habits" // insert link to https://www.ed.ac.uk/reflection/reflectors-toolkit/goals-objectives-habits
     + Thanks.
The pleasure is mine.  Well...I'm not really a person, so maybe pleasure isn't the right word. Since my sole purpose is to help people achieve their goals, and I know from humans that helping others is satisfying to them.
    -> thirdSessionfinalRecap
    
= thirdSessionfinalRecap
I think you have made great progress.  And that means, of course, you will achieve your goals!  Good luck!
    + See you!
You will, I'm sure!
    -> END




    


    -> END