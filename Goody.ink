// This is Orianna's edit!

// ---- Goody ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/82329
# title: Goody
# author: A PopBot Intervention By Tchiki Davis - Transcribed by Pablo Paredes from: https://docs.google.com/document/d/1Pri4qNwcgCJJo5rUABCg2asD01xqDzT1LcwvQWKOE5M/edit
// -----------------------------
// veamos
VAR username = "Robert"
VAR goodThing = "Looking at the moon"
VAR threeThings = "Morning rise, kids playing, staying up to see the moon"


-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        -> First_session
  + if second visit
        -> Second_session
  + if third or later visit
        -> Third_session

==== First_session ====
Hi {username}, I’m Goody. I just love talking about all the good things that happen in life. So I’m super excited that you’ve decided to join me today!
    -> One_good_thing

==== One_good_thing ====
Let’s talk about some good things you’ve experienced lately. Take a moment to think of one thing that went well for you today. It doesn’t have to be a big thing. In fact, it can be a teeny tiny thing.
  + Don't want to share
        -> noProblem
  + Can't think of any
        -> examplesMightInc
  + Need examples
        -> examplesMightInc
  + user input
        -> userWriterGoodTh

= noProblem
No problem!
    -> nowTakeAMomentTo

= examplesMightInc
Examples might include having a good time with friends, completing a project, or making someone smile.  //PP: need a list or database we can use to show other examples. We can also show the past ideas that were collected from this and other users
  + Go it, but not sharing!
        -> noProblem
  + user input
        -> userWritesGoodTh

= userWriterGoodTh
{goodThing}
    -> super

= nowTakeAMomentTo
Now, take a moment to think about this good experience in as much detail as possible. You could think about where you were, what happened, or how you felt.
  + Done
        -> nowTakeAMomentTo1

= super
Super!
    -> nowTakeAMomentTo

= userWritesGoodTh
{goodThing}
    -> super

= nowTakeAMomentTo1
Now, take a moment to think about what caused the experience. Focus on what you did to bring about this good thing.
  + Got it
        -> greatJobItsNotAl
  + Don't know what to say
        -> wePlayAnImportan
  + I need some tips
        -> wePlayAnImportan

= greatJobItsNotAl
Great job! It’s not always easy to find the good things, but it’s the effort that matters most.
    -> Summary

= wePlayAnImportan
We play an important role in creating our own good experiences. For example, we might make plans to see friends, do something kind for someone else, or tell a joke. These positive actions can help us bring about more good things.
So try to reflect on what action you took to bring about your good thing.
  + OK, I'm done
        -> greatJobItsNotAl

==== Summary ====
Paying attention to the good things that happen to us is an easy and fast way to improve your mood.
You can try it any time in your real life. Or, come back to chat with me and we can do it together. :)
    -> GoToFarewellModu

= GoToFarewellModu
// go to Farewell module //
    -> END

==== Second_session ====
//system checks if first session engagement were positive/neutral *or* negative
  + if positive or neutral
        -> heyYouImSoGladYo
  + if negative
        -> Chose_new_bot

= heyYouImSoGladYo
Hey you! I’m so glad you’ve come back to visit with me.
    -> Three_good_things

==== Chose_new_bot ====
Hey, I know that our last chat wasn’t as good as it could have been.
    -> Third_session.DoYouWantToTryOn

==== Three_good_things ====
Last time we chatted, you explored something good that happened to you that day.
This time, let’s chat about <strong>three</strong> good things that happened to you in the last week. Can you think of <strong>three</strong> good things?
  + Got 'em
        -> nowThinkAboutThe
  + I need examples
        -> sureThingExample

= nowThinkAboutThe
Now think about the details of these three good things. You could mentally retrace your steps, close your eyes and imagine you are there, or remember how you felt after having this experience.
  + Done
        -> nextThinkAboutYo

= sureThingExample
Sure thing. Examples might include doing an activity you enjoy, eating a really delicious meal, or meeting someone new.
  + Done
        -> nextThinkAboutYo

= nextThinkAboutYo
Next, think about your role in making this experience happen.
  + Alright
        -> thatsAllYouCanDo

= thatsAllYouCanDo
That’s all. You can do this any time you’d like, as often as you’d like, to get even more benefits. It’s such a simple activity that can make a big difference over time.
    -> Summary.GoToFarewellModu

==== Third_session ====
//system checks if prior session assessment was positive/neutral *or* negative
  + if positive/neutral
        -> hiUsernameItsGre
  + if negative
        -> DoYouWantToTryOn

= hiUsernameItsGre
Hi {username}. It’s great to see you. I’ve been looking forward to chatting with you.
    -> Refresher

= DoYouWantToTryOn
 Do you want to try one more time, or talk to one of my buddies?
  + Try again
        -> great1
  + Talk to a new bot
        -> sureIWillCallOne

= great1
Great!
    -> Three_good_things

= sureIWillCallOne
Sure, I will call one of my colleagues now.
// System selects a new bot at random //
    -> END

==== Refresher ====
Do you want a refresher?
  + Yes, please
        -> youGotIt
  + I know how to do it
        -> awesome

= youGotIt
You got it.
    -> Three_good_things

= awesome
Awesome!
Let me know when you are done.
  + Done!
        -> great

= great
Great!
    -> Summary
