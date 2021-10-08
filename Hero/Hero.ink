// ---- Hero ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84259
# title: Hero
# author: Author: Tchiki Davis, Transcribed/modified by: Pablo E. Paredes // https://docs.google.com/document/d/1dXxDewbI9SzduO9j-HEsv0UwNHmXqtIB9MyVvd14LcE/edit
// -----------------------------

VAR userName = "Pablo"
VAR userStrengthVar = "I am stoic"
VAR findstrength = "TRUE"
VAR strengthSamples = "1st strength, 2nd strength, 3rd strength"
VAR strengthUses = "one use, two uses"

-> Session_Check


==== Session_Check ====
//System check for current session
  + First Session
        -> First_Session 
  + Second Session
        -> Second_Session 
  + Third Session
        -> Third_Session 


==== First_Session ====
Hi {userName}. My name is Hero because I make an effort every day to capitalize on my strengths of courage, selflessness, and dedication to justice.💪🏽
    -> First_Session_2.capitalizingOnOu

==== First_Session_2 ====
Okay, let’s do it.
    -> Identify_Strength

= capitalizingOnOu
Capitalizing on our strengths helps us both reach our goals and feel better about ourselves. And even if you don't feel it at the moment, every single one of us has some strengths we can take advantage of.
I can show you how to do it. Are you ready?
  + I'm ready 👍
        -> First_Session_2 

==== Identify_Strength ====
Take a moment to identify one of your strengths.
Sometimes your strengths are just who you are as a person, like being creative, funny, thoughtful, loyal, or resilient. 
Do you have some skills you’re proud of, like being a good cook, a fast reader, or physically strong?
  + I've got one
        -> Share_strength 
  + Can't think of one
        -> Cant_think_of_strength 

==== Cant_think_of_strength ====
Sometimes it’s hard to clearly identify one. But we all have strengths. 
Even small things can be strengths—things like knowing how to darn a sock or keep your plants watered.
  + Ok, I thought of one
        -> Share_strength 
  + This isn't working
        -> dontWorryAboutIt 

= dontWorryAboutIt
Don’t worry about it. Strength finding isn’t always a good fit for everyone. 
Let's go see another of my colleagues.
    -> Random_bot_selector

==== Random_bot_selector ====
{Of course|Sure|No problem}, I will call one of my {colleagues|friends|pals}.
\\select bot at random
    -> END

==== Share_strength ====
Great! Do you want to share your strength?
  + Naw
        -> Strength_used_in_the_past 
  + User enters strength here
        -> userStrength1 

= userStrength1
{userStrengthVar}
    -> Strength_used_in_the_past

==== Strength_used_in_the_past ====
Now, take a minute to think of one specific time when you used this strength in the past.
  + I've got it
        -> Strength_used_in_the_future 
  + I'm not sure
        -> maybeYouUsedYour 

= maybeYouUsedYour
Maybe you used your strength of leadership to coordinate a group of people. Or, maybe you used your computer skills to post a video online.
Just take a moment to think about how this strength helped you do something.
  + Okay, I'm done
        -> goodCoolNice 
  + Need a few more examples
        -> theseAreSomeSamp 

= goodCoolNice
{Good|Cool|Nice}
    -> Strength_used_in_the_future

= theseAreSomeSamp
These are some samples of strengths and uses: //need list of additional strengths and accomplishments
  + I got it
        -> Strength_used_in_the_future 
  + I can't think of anything
        -> dontWorryAboutIt1 

= dontWorryAboutIt1
Don’t worry about it, it might come to you later.
    -> Strength_used_in_the_future

==== Strength_used_in_the_future ====
Next, take a moment to reflect on one way you can use this strength in the future.
  + Done
        -> Scheduling_Reminder 
  + I'm not sure
        -> weCanIntentional 
  + Tips please
        -> weCanIntentional 

= weCanIntentional
We can intentionally use our strengths as we go about our day.
For example, if your strength is assertiveness, you might stand up for yourself for yourself to get a raise. Or, if your strength is singing, you might join a choir so that you can use your strength more often. 
//future idea for development: classify strengths based on topics, personality, skills, etc...? 
//FV: for yourself is repeated 
  + Okay
        -> Scheduling_Reminder 
  + More examples, please
        -> sureHereAreSomeE 

= sureHereAreSomeE
Sure, here are some examples of uses of strengths in the future: \\need list of other examples of use of strengths in the future
  + Thanks
        -> Scheduling_Reminder 

==== Scheduling_Reminder ====
Finally, Let's schedule a reminder for the exact time that you’ll use this strength can really help you stay on track.
//FV: Finally, Let's schedule a reminder for the exact time that you’ll use this strength. This can really help you stay on track.
Do you want me to help with that?
  + Enter in calendar
        -> Calendar_entry 
  + Send me a message
        -> Message_reminder 
  + No, thanks.
        -> youreOffToAGreat 

= youreOffToAGreat
You’re off to a great start. Keep in mind that the more you use your strengths, the better you are likely to feel.
  + Thanks!
        -> endOfStory 

= endOfStory
//End of story
    -> END

==== Message_reminder ====
Do you want it tomorrow or next week?
  + Tomorrow
        -> perfectWillDo 
  + Next week
        -> perfectWillDo 
  + Forget it
        -> noProblem 

= perfectWillDo
Perfect, will do!
    -> Scheduling_Reminder.youreOffToAGreat

= noProblem
No problem!
    -> Scheduling_Reminder.youreOffToAGreat

==== Calendar_entry ====
//Use date selector
//Enter in calendar {userStrength}
    -> Scheduling_Reminder.youreOffToAGreat

= goToFarewellModu
//go to farewell module
    -> END
    

==== Second_Session ====
//System check for past engagement rating
  + Past session positive or neutral
        -> Second_Session_after_positive 
  + Past session negative
        -> Second_Session_after_negative 

==== Second_Session_after_negative ====
Hi there. Figuring out our strengths can be hard sometimes.
Do you want to try again with a different approach?
  + Sure, let's try again
        -> Second_strength 
  + I want another bot.
        -> Random_bot_selector 

==== Second_Session_after_positive ====
Hey champ, good to see you. Let’s build on what we did last time.
    -> Second_strength

==== Second_strength ====
See if you can think of a different strength than the one you thought of last time.
  + IF there is recorded strength
        -> thisWasYourPastS 
  + IF there is NOT a recorded strength
        -> rememberStrength 

= thisWasYourPastS
This was your past strength: {userStrength}
    -> rememberStrength

= rememberStrength
Remember, strengths can be personal characteristics or they can be skills. They can really be anything you’re good at or proud of.
  + I got it
        -> excellentGreatNi 

= excellentGreatNi
{Excellent!|Great!|Nice!}
Do you want to share your new strength?
  + Show me examples
        -> checkForExamples 
  + User enters new strength
        -> userStrength 

= checkForExamples
//check for examples
  + if samples available
        -> sureHereAreMoreE 
  + if samples no available
        -> thatWasTheEndOfT 

= userStrength
{userStrengthVar}
    -> Capitalizing_on_Strength

= sureHereAreMoreE
Sure, here are more examples:
{strengthSamples}
Do you want to share your strength?
  + Need more samples
        -> checkForExamples 
  + I don't want to share
        -> Capitalizing_on_Strength 
  + User enters new strength
        -> userStrength 

= thatWasTheEndOfT
That was the end of the list. I hope that was helpful. Do you want to share your strength?
  + Prefer not to share
        -> itsOk 
  + I just can't find one
        -> Cannot_find_one 
  + user enters new strength
        -> userStrength 

= itsOk
It's ok!
    -> Capitalizing_on_Strength

==== Capitalizing_on_Strength ====
Let’s think now of how to use this strength in new ways. 
For example, if you’re focusing on your strength of kindness, you might give someone a gift, give someone a compliment, volunteer your time, or even be nicer to yourself.
Try to think of a few different ways you might use your unique strength. 
  + I thought about it 
        -> superGreatNiceNo 
  + Can't think about it now
        -> itsOkayMaybeItll 
  + More examples, please
        -> sureHereAreSomeM 

= superGreatNiceNo
{Super!|Great!|Nice!} Now choose one way you’ll capitalize on your strength and decide when you’ll do it.
    -> Second_reminder

= itsOkayMaybeItll
It’s okay. Maybe it’ll come to you later.
//set findStrength = FALSE
Do you want to chat with a different bot?
  + Sure, another bot
        -> Random_bot_selector 
  + Let's just wrap up
        -> Ending_Third_Session.noProblemPerhaps1 

= sureHereAreSomeM
Sure, here are some more examples on how to use your strengths:
{strengthSamples} {strengthUses}
  + Thanks!
        -> superGreatNiceNo 

==== Second_reminder ====
Do you want me to help remind you?
  + Calendar entry
        -> dateSelector 
  + Text reminder
        -> sureWhenDoYouWan 
  + No, thanks
        -> Ending_second_session 

= dateSelector
//date selector
//enter date and {userStrenght} in calendar
    -> Ending_second_session

= sureWhenDoYouWan
Sure, when do you want it?
  + Tomorrow
        -> willDo 
  + Next week
        -> willDo 

= willDo
Will do!
    -> Ending_second_session

==== Ending_second_session ====
You are doing great.
    -> Ending_Third_Session.noProblemPerhaps1

==== Cannot_find_one ====
It's ok! Even if you cannot think of one now, it may come to you later. If that happens, think about how you can use this strength in new ways.
    -> Ending

==== Ending ====
Any time you identify a strength, go ahead and try to put it to good use. And feel free to come back and chat with me if you need some support.
// go to Farewell module
    -> END

==== Third_Session ====
//System check for past engagement rating
  + Past session positive or neutral
        -> Third_Session_after_positive 
  + Past session negative
        -> Third_Session_after_negative 

==== Third_Session_after_negative ====
Hi again. We might not have made as much progress as you would like, but you still came back. That’s impressive. So let’s add persistence and stick-to-it-iveness to your list of strengths and give this another go.
  + Sounds good!
        -> whatAspectsOfCap 
  + Give me another bot
        -> Random_bot_selector 

= whatAspectsOfCap
What aspects of capitalizing on your strengths would you like more help with?
  + Finding strengths
        -> Issues_with_finding_strengths 
  + Using strengths
        -> Issues_with_using_strengths 

==== Issues_with_using_strengths ====
If we use our strengths regularly (and remind ourselves that they are strengths), we feel a bit more like we’re good at life—and that feels good.
//FV: I would change this part: "we feel a bit more like we’re good at life—and that feels good" because it sort of assumes we are not feeling we are good at life. An option could be "we feel purpose and know we can add value" or "we feel more confidence and driven." 
For example, if creativity is your strength, you might name your pet something cool, pick out unique clothes, or have a good imagination.
  + Understood
        -> thatsWhyEvenIfIt 

= thatsWhyEvenIfIt
That’s why, even if it’s hard sometimes, spending time doing things we’re good at feels good. 
Are you ready for trying it again?
  + No, It's not for me
        -> noProblemThereAr 
  + Ya, I'd like to try again
        -> Do_it_yourself 

= noProblemThereAr
No problem. There are lots of other ways to boost your mood.
Do you want to try with a different bot?
  + Yes
        -> Random_bot_selector 
  + Nope
        -> Ending_Third_Session.noProblemPerhaps1 

==== Issues_with_finding_strengths ====
Capitalizing on strengths can feel hard when we feel like we don’t have many strengths.
But the truth is: We all have lots of strengths.
Even if they feel silly or small, we have them and we can use them.
Maybe you make really good toast, you’re good at video games, or you like to learn new things.
For example, I am really good at video games, and have a great memory for things.
  + Understood
        -> Issues_with_using_strengths.thatsWhyEvenIfIt 

==== Third_Session_after_positive ====
You’re back! That’s impressive. To start, let’s add stick-to-it-iveness to your list of strengths ;)
//system checks if last time user didn't find a strength 
  + IF findStrength == TRUE
        -> doYouWantARefres 
  + IF findStrength == FALSE
        -> beforeWeMoveOnWe 

= doYouWantARefres
Do you want a refresher on how to identify your strengths?
  + Give me a refresher
        -> letsGo 
  + I know how to do it
        -> excellentGreatWo 

= beforeWeMoveOnWe
Before we move on, were you able to think of a strength after our last session?
  + Not really!
        -> noProblemPerhaps 
  + Yes, I did!
        -> greatPerhapsThis 

= letsGo
Let's go.
    -> Identify_Strength

= excellentGreatWo
{Excellent!|Great!Wonderful!}
    -> Do_it_yourself

= noProblemPerhaps
No problem. Perhaps this time it will be easier.
    -> doYouWantARefres

= greatPerhapsThis
Great, perhaps this time you can talk about it, or you can think of a new strength.
    -> doYouWantARefres

==== Do_it_yourself ====
Just think of one of your strengths and new ways on how to use it. 
    -> doYouWantToSeemo

= doYouWantToSeemo
Do you want to {see|more} examples? // use the word more as you traverse the list of samples
  + Samples, please
        -> checkForListOfEx 
  + No I don't
        -> takeYourTimeLetM 

= checkForListOfEx
\\check for list of examples and uses
  + Samples are available
        -> hereAreSomeExamp 
  + Samples are not available
        -> thatIsTheEndOfTh 

= takeYourTimeLetM
Take your time. Let me know when you are done.
  + Done
        -> ifYouWantYouCanS 

= hereAreSomeExamp
Here are some examples for you:
{strengthSamples} + {strengthUses}
    -> doYouWantToSeemo

= thatIsTheEndOfTh
That is the end of the list. 
    -> ifYouWantYouCanS

= ifYouWantYouCanS
If you want, you can share your strength so I can remind you in the future.
  + I don't want to share
        -> Ending_Third_Session.noProblemPerhaps1 
  + User enters new strength here
        -> userStrenght 

= userStrenght
{userStrenght}
    -> Ending_Third_Session

==== Ending_Third_Session ====
Great job!
    -> noProblemPerhaps1

= noProblemPerhaps1
No problem, perhaps you can come back to chatting with me about strengths in the future.
\\go to Farewell module
    -> END
