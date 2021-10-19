
//LOCKED FOR FURTHER REVISIONS POST-ENG REVIEW by RobertG 10-18-2021 1pm PDT
//FOR THIS REVISION I AM REMOVING SOME VARIABLE CALLS, INSERTING AN INPUT THAT CAN LATER BE CALLED BY ONE OF THE REMAINING VAR (baby steps), FIXING ILLOGICAL FLOWS AT SOME END POINTS, AND WRITING "EXAMPLES" TEXT RATHER THAN REFERRING TO A DATABASE THAT WILL NOT IN FACT EXIST FOR AWHILE.
// ---- PopBot: BABY .. was ANdale  Reflecting on Progress VERSION 2 ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84200
# title: PopBot: Reflecting on Progress VERSION 2
# author: Robert Gehorsam, original version by Tchiki Davis 
//https://docs.google.com/document/d/1ZlmXvKHQX9f05CJ8L2wznhPsOfSKc3IZ9bhh37Z4FBg/edit
// -----------------------------

// DD 10/14/2021 - Review notes throughout.  Added general ideas at the top of the document.

//DD - General ideas for this bot:  
//  Motivation follows action and not the other way.  Often we wait to feel motivated before taking a step and we need to learn and notice that our motivation increases after we get started.  Working in this educational piece throughout would be good.
//  When someone struggles taking action towards a goal it can really help to make sure the goal is properly broken down into the SMART system.  Having a manageable, very specific, time limited goal that is scheduled helps a lot.  It then can also help to recruit friends/family and share with them the plan to take this step so you are less likely to procrastinate.  I think we can give more concrete examples from beginning to end of goal setting and breaking down into baby steps.
//  If someone is approaching a goal it is good to understand that some parts of the goal will be easy and some will be harder.  In sessions 2 and 3 what might cause a user to report negativity is the fact that they haven't made significant progress on the goal because the haven't really tackled the more essential/difficult parts of the goal.  I might take 10 small steps towards a goal in a week but still feel bad abotu my progress because I'm avoiding the important step that needs to happen.  I might have session 3 focus on this concept rather than the longterm reflection idea
//  
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
//MV - changed the infant sentence, though it sounded bit strange RG: THX.
//MV - adapted last sentence to lead better into choice RG: THX
Hi, {userName}, I’m called Baby. Why, you ask? Well, because I’m an expert on setting goals and making progress on those goals... and that means taking baby steps! 
Sometimes it can be a bit tricky to set a goal that is easy to work on. It helps to understand some basic principles. 
Would you like to know more or go ahead and try?
  + Please share!
  Happy to!
        -> Goal_explanation 
  + I'm ready to try.
  Let's do it! <>
        -> First_goal_setting_practice 

==== First_goal_setting_practice ====
Start by thinking of one goal that matters to you.
  + I've got one.
        -> First_goal 
  + I can't think of one.
        -> thereAreLotsOfDi 

= thereAreLotsOfDi
//MV - shortened slightly, replaced "regimen" RG: DONE
There are lots of different types of goals. Your goals could be related to your career, your relationship, your family, your community, or yourself. All goals count: things like keeping to a workout schedule, studying for an exam, or simply spending more time with friends.
  + OK, thought of a goal.
        -> greatDoYouWantTo 
 // + More examples, please.
        //-> listOfGoalExampl 
  + This isn't working for me.
        -> dontWorryAboutIt 

= greatDoYouWantTo
//MV - replaced "it" by "your goal" to lead better into choices RG: DONE
Great! Do you want to share your goal now?
  + User enters input here
        -> userInput 
  + Not right now
        -> oKNowTakeAMinute 

//= listOfGoalExampl
//{goalExamples}
 // + Got it
        //-> greatDoYouWantTo 

= dontWorryAboutIt
Don’t worry about it. If we’re feeling stressed it can be hard to focus on exercises like this. Do you want some more information about goals?  Or...maybe a visit with one of my friends will help. 
    + Visit a pal
        -> Random_bot_selection
    + More details.
        -> Goal_explanation

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
//DD I think it can really help to give examples of each aspect of SMART, also should add specific to this.  
//  A goal should be specific so instead of saying 'I want to be healthy' you might say 'I want to workout 4 days a week' RG: DONE, THX, This really makes a difference
A well-defined goal reflects your values and is important to you. Actually, there's a term called SMART which really captures it.  I will break it down...into baby steps!  

S = specific
M = measurable
A = attainable
R = relevant
T = time-bound

    + Tell me more
    -> smartDefinitions1

  + OK, I have one.
        -> First_goal 
  + I can’t think of one
        -> First_goal_setting_practice.thereAreLotsOfDi 

= smartDefinitions1
Specific means that instead of saying, "I want to be healthy" you could say, "I want to workout 4 days a week."

Measurable means that instead of saying "I want to lose weight" you could say, "I want to lose 10 pounds."

Attainable means that you have a good sense of how you will do it.  So for losing 10 pounds, you have to know that the ways you'll do it are things you can do.
    + Got it. and R and T?
        -> smartDefinitions2
        
= smartDefinitions2
Of course.

Relevant goals (or relevant steps) support your bigger dreams or goals.  So a relevant step for being healthy is losing weight, but it's likely that going for a daily pleasure drive is not a relevant step for either losing weight or being healthy.

Finally, being Time-bound is critical. Set a goal or a baby step that has a reasonable time-limit.  So beyond just saying "I want to lose 10 pounds" you might say "I want to lose 10 pounds in two months."  
    
    +Smart!
    Exactly! 
        -> doYouHaveFirst_goal

=doYouHaveFirst_goal
So, now do you think you have a first goal?
    +Yes
        -> First_goal_setting_practice.greatDoYouWantTo


==== Random_bot_selection ====
random selection of another bot
    -> END

==== First_goal ====
{Great!|Super!|Nice!} Do you want to share your goal?
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
//rephrased to make more active and reduce the "has been shown to" research angle. RG: thx
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
In general (not necessarily about {goalExamples}), here are some ideas:

If your goal is to buy a house, perhaps a first baby step might be to decide what you can afford.  A next baby step might be deciding where you want to buy the house, followed by researching what kinds of houses are available.

Or if your goal is to lose ten pounds, perhaps your first baby step is to research the role of diet in doing that. Then you might decide what kind of diet would be suitable for you and planning your shopping and meals to support that.

Does this help?

  + Got it
        -> nextSeeIfYouCanI 
  + Can't think of one
        -> dontWorryAboutIt1 

= dontWorryAboutIt1
//MV - seems to end a bit abruptly. Should we lead into talking to another bot, or coming back?
Don't worry about it.  It could pop up in your mind later. It can be helpful to jot down possibilities and come back to them later.

But let's do a quick recap so it's in your mind.

If you want to deal with the stress of setting and managing your goals, the SMART framework is really helpful.  You can learn more at 

Taking baby steps is powerful.  You don't have to do everything at once.  In fact, you shouldn't! The SMART idea is good for thinking about each baby step as well as the overall goal.
    + Got it.
Let's leave off here.  I hope to see you soon!
    -> END


==== Next_steps ====
Looking forward, can you identify one baby step you can take in the next few days to get even slightly closer to your goal?
  + Yes, got it.
        -> greatThatsItForT 
  + Not yet.  
  //DD this part of the flow doesn't make sense to me.  It goes into showing 'taking the SAT' and then goes to nice job...  RG:  the SAT comes from a VAR as the next one they might take for "getting into college".  I added more details in the nice job stitch (or knot)  I intend to personlize it more in the next revision so it isn't as un-personalized in the reflection, but right now don't know how to do that in the deadline.
        -> noNextBabyStep
        
= noNextBabyStep
That's really ok, sometimes we need to have some time to reflect on the best course of action.  But no matter what, you are now on your way.
    -> noNextBabySteprecap
    
= noNextBabySteprecap
So let's pause and reflect on this progress.

1. You learned about setting SMART goals.
2. You explored your own goals and baby steps you may have taken.
3. You considered the next baby steps.

Even though you didn't necessarily get all the answers you wanted now, I hope this is a framework you can use for yourself.
//MV - should we say "when" instead of "if"? Like we expect them to come back? RG: DONE
When you come back and see me, we’ll talk about how this next baby step went. Really interested to hear how things will go!
  + Bye!
  See you!
        -> endFirstSession 

= endFirstSession
//go to farewell
    -> END
    

= greatThatsItForT
Great, those are excellent baby steps you've taken today.  So just take a moment to give yourself a little pat on the back for doing this exercise. You've started, and that's often the hardest part.
  + Done.
        -> niceJobIfYouCome 

= babySteps
{firstBabySteps}
    -> niceJobIfYouCome

= niceJobIfYouCome
Nice job! That's your second baby step just in this little chat!  So let's pause and reflect on this progress.

1. You learned about setting SMART goals.
2. You explored your own goals and baby steps you may have taken.
3. You considered the next baby steps.

Even if you didn't quite get all the answers, I hope this is a framework you can use for yourself.
//MV - should we say "when" instead of "if"? Like we expect them to come back? RG: DONE
When you come back and see me, we’ll talk about how this next baby step went. Really interested to hear how things will go!
  + Bye!
  See you!
        -> endFirstSession 


    
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
    //add some reassurance here and in not sure yet before jumping to itfeltok  RG got it.
        -> itFeltOk
    + Not sure yet.
    Sometimes it takes a little time to know.
        -> itFeltOk

= itFeltOk 
//MV - shortened choice to 20 chars
//DD Think back to any hesitation or avoidance you had about the overall goal.  Was this small step as difficult as you anticipated?  When we break down a larger goal into baby steps it's a lot easier to progress forward. RG: DONE
Think back to any hesitation or avoidance you had about the overall goal.  Was this small step as difficult as you anticipated?  Did it meet the SMART framework?

When we break down a larger goal into baby steps it's a lot easier to move forward.
    + OK, I'm ready.
        -> okImReady
    + Examples, please.
        -> findnextBabySteps
        
= findnextBabySteps
//MV - I am unsure how this will work? Do we just provide them with random examples that may have nothing to do with the goal they entered? 
//DD Similar comment to MV.  We could give examples from beginning to end.  So start with a goal, reframe the goal so it follows SMART, and then break it down into baby steps.  If we this for each of the main domains (relationship, work, etc) and the user can select based on domain I think that would be a helpful branch to have available.  RG: this is a great idea but that might be too much for now. I also am concerned about sections that are too long/wordy. but perhaps loop back to SMART definitions. will try that first.
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
// DD- OK, how about tomorrow?  If you can schedule the step in as soon as possible it is a lot easier to build momentum and minimize avoidance!
    -> secondSessionEndPositive.YoureOnTheRightPath
= yesByText
OK, tomorrow or next week? (initiate text entry process)
    -> secondSessionEndPositive.YoureOnTheRightPath



====SecondSessionReflectingonNoAction====

= reflectingOnNoAction
OK, no worries.  Busy schedules and full brains can make it tough to do all the things we want to do.
    
When we don't take the step we intended to it is really important to reflect on what got in the way.  

Did you forget about it?  Then this time lets get the action into our calendar.  

Did you decide not to do it when the time came because it felt too stressful?

Something else?
    
Take a minute to think about how you'll make sure you take that one baby step. We can explore it next time we chat.
    //When we don't take the step we intended to it is really important to reflect on what got in the way.  Did you forget about it?  Then this time lets get the action into our calendar.  Did you decide not to do it when the time came because it felt too stressful?  Then maybe talk to my friend puffy about learning some breathing tricks to help ease that stress as you approach the step.  Maybe you have another insight into what got in the way.  Whatever happened think about some small actions you can take to help yourself solve the obstacle and take this small step!  In doing this you are actually taking a very important baby step towards achieving your goal.  Sometimes you have to clear away the brush on a trail before you can start your walk.  RG: used some of this.
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
//DD should we ask for user input on what was negative?
I know this has not moved forward the way you might have hoped. Would you like to start again, continue with today's topics, or talk to one of my pals?

    + Start again
        -> First_goal_setting_practice
    
    + Continue
        -> thirdSessionLesson
        
    + Talk to a pal
        -> negativeSecondSession.sureIWillCallOne
        
        
= positiveOrNeutral3
// DD we shoudl summarize what has been done so far, setting a goal, identifying a baby step, taking the step
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
We can also reflect over longer timeframes. 

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