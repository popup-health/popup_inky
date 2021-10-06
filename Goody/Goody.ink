//LOCKED by Pablo

// ---- Goody ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/82329
# title: Goody
# author: A PopBot Intervention By Tchiki Davis - Transcribed by Pablo Paredes 
//original file: https://docs.google.com/document/d/1Pri4qNwcgCJJo5rUABCg2asD01xqDzT1LcwvQWKOE5M/edit
// -----------------------------

// David DD just made an edit - I added some language to make the intervention a bit more precise (using emotion, detailing the feelign tone of the experience remembered, adding in awareness of thought.  The purpose of this is to overlap some of the CBT skills we will be training in the other bots.  Also added a few more points as to how this exercise shifts cognitive bias and battles against a sense of helplessness in the user.

VAR username = "Bobby"
VAR goodThing = "looking at the moon   " //PP: this goes into the DB of ideas for this user
VAR otherGoodThings = "MANY IDEAS FROM ALL USERS" //PP: this is a DB of ideas from all users
VAR threeThings = "Morning rise, kids playing, staying up to see the moon" //PP: this goes into the DB of ideas for this user


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
# IMAGE: goodyimage.jpeg

Hi {username}, I’m Goody. I just love talking about all the good things that happen in life. So I’m super excited that you’ve decided to join me today!
    -> One_good_thing

==== One_good_thing ====  //DD - use the word experience instead of thing?  
Let's talk about a pleasant experience you've had today.  It doesn't need to be the most fun thing you've ever done but something simple and small. In fact, it can be a teeny tiny thing.
  + Don't want to share
        -> noProblem
  + Can't think of any
        -> examplesMightInc
  + Need examples
        -> examplesMightInc
  + "user enters their experience directly here" 
  // DD this should say something more.  Something like: "Ok here's my experience:"
  // PP: yes, this is just a placeholder for a quick selection 
        -> userWritesGoodTh

= noProblem
No problem!
    -> nowTakeAMomentTo

= examplesMightInc
Examples might include having a good time with friends, completing a project, or making someone smile. Do you want to see what other users have shared with me in the past?
    //PP: need to link to a list or database we can use to show other examples. We can also show the past ideas that were collected from this and other users
  + Show me good things
        -> showGoodThings
  + Got it, but not sharing!
        -> noProblem
  + "user enters their experience here"
        -> userWritesGoodTh

= showGoodThings
{otherGoodThings} //PP: Show 5 most recent good ideas
Hope this helps, do you want to see more? do you want to share?
  + See more
        -> showGoodThings  
        //PP: Show the next 5 ideas. If end of list then change above text to: "That is all I have. Do you want to share?" 
  + Got it, but not sharing!
        -> noProblem
  + "user enters their experience directly here"
        -> userWritesGoodTh


= nowTakeAMomentTo 
Now, take a moment to think about this good experience in as much detail as possible. You could think about where you were, what happened, what thoughts were running through your mind, or what emotions (happy, excited, content, peaceful, etc.) you were feeling.  
  + Done
        -> nowTakeAMomentTo1

= super
{Super!|Great!|Nice!|Cool!} //PP: Different language selected with a random coin
    -> nowTakeAMomentTo

= userWritesGoodTh 
{goodThing}
    -> super

= nowTakeAMomentTo1
The next thing to do is to take a moment to think about what caused the experience. Focus on what you did to bring about this good thing.
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
# IMAGE: ../goodyimage.jpeg
Paying attention to good things as they are happening or remembering them after is an easy and fast way to improve your mood.  Noticing good things also helps remind us that we can take action to add more good things into our daily routine.  Keep trying to add good things into your daily life and then take notice and savour those small moments!  Or come back to chat with me and we can do it together. 🤤
// DD good to emphasize awareness of good things as they happen and of the actions we take to make them happen

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
Last time we chatted, you explored something good that happened to you recently.
This time, let’s chat about <strong>three</strong> good things that happened to you in the last week. Can you think of <strong>three</strong> good things?
  + Got 'em
        -> nowThinkAboutThe
  + I need examples
        -> sureThingExample

= nowThinkAboutThe
Now think about the details of these three good things. You could mentally retrace your steps, close your eyes and imagine you are there, or remember {how you|the emotions you} felt after having this experience.  
    //PP: the {...|...} configuration is used to denote different language used at different runs of the bot this could be selected with a random coin
  + Done
        -> nextThinkAboutYo

= sureThingExample
Sure thing. Examples might include doing an activity you enjoy, eating a really delicious meal, or meeting someone new. Are you done, or do you want to see examples of good things from others?
  + Examples, please
        -> showGoodThings2
  + Done
        -> share3Things

= showGoodThings2
{otherGoodThings} //PP: Show 5 most recent good ideas
Hope this helps, do you want to see more? do you want to share?
  + See more
        -> showGoodThings2  
        //PP: Show the next 5 ideas. If end of list then change above text to: "That is all I have. Do you want to share?"
  + Done!
        -> share3Things

=share3Things
Do you want to share one of the good things?
  + Don't want to share
    -> nextThinkAboutYo
  + user input
    {goodThing}
    {Great!|Super!|Nice!|Cool!} //PP:Language selected with random coin
    -> nextThinkAboutYo
  
    

= nextThinkAboutYo
Next, think about your role in these experiences.  What concrete actions did you take to help make these experiences happen?

  + Alright
        -> thatsAllYouCanDo

= thatsAllYouCanDo
# IMAGE: ../goodyimage.jpeg
Sometimes we get into a habit of mostly noticing problems in life and not fully taking in the positive.  We can also sometimes discount the actions we can take to make positive experiences happen.  This is such a simple activity but it can really make a difference over time.  Making the good things happen and noticing them is a habit that we can train with just a small amount of effort!
-> Summary.GoToFarewellModu

==== Third_session ====
//system checks if prior session assessment was positive/neutral *or* negative
  + if positive/neutral
        -> hiUsernameItsGre
  + if negative
        -> DoYouWantToTryOn

= hiUsernameItsGre
Hi {username}. It’s great to see you. I’ve been looking forward to chatting with you again.
    -> Refresher

= DoYouWantToTryOn
 Do you want to try one more time, or talk to one of my buddies?
  + Try again
        -> great1
  + Talk to one of your buddies
        -> sureIWillCallOne

= great1
Great!
    -> Three_good_things

= sureIWillCallOne
Sure, I will call one of them now.
// System selects a new character at random //
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
