// ---- Goody ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/82329
# title: Goody
# author: A PopBot Intervention By Tchiki Davis - Transcribed by Pablo Paredes 
//original file: https://docs.google.com/document/d/1Pri4qNwcgCJJo5rUABCg2asD01xqDzT1LcwvQWKOE5M/edit
// -----------------------------

// David DD just made an edit - I added some language to make the intervention a bit more precise (using emotion, detailing the feelign tone of the experience remembered, adding in awareness of thought.  The purpose of this is to overlap some of the CBT skills we will be training in the other bots.  Also added a few more points as to how this exercise shifts cognitive bias and battles against a sense of helplessness in the user.

VAR userName = "Robert"
VAR goodThing = "looking at the moon   " //PP: this goes into the DB of ideas for this user
VAR otherGoodThings = "MANY IDEAS FROM ALL USERS" //PP: this is a DB of ideas from all users
VAR threeThings = "Morning rise, kids playing, staying up to see the moon" //PP: this goes into the DB of ideas for this user
VAR counter = 1

-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + First visit
        -> First_session
  + Second visit
        -> Second_session
  + Third visit (or later)
        -> Third_session


//******************************************************************//
//******************************************************************//


==== First_session ====

# IMAGE: Goody.png
//this dot just helps display the image command above the text
    Hi {userName}, I’m Goody. I just love talking about all the good experiences that happen in life. So I’m super excited that you’ve decided to join me today!
    Let's talk about a pleasant experience you've had today.  It doesn't need to be the most fun thing you've ever done but something simple and small. In fact, it can be a teeny tiny thing.
      + Don't want to share
        No problem!
            -> nowTakeAMomentTo
      + Can't think of any
            -> examplesMightInc
      + Need examples
            -> examplesMightInc
      + user enters their experience directly here:
            -> userWritesGoodTh
    
    = examplesMightInc
    Examples might include having a good time with friends, completing a project, or making someone smile. Do you want to see what other users have shared with me in the past?
        //link to a list or database we can use to show other user examples.
      + yes, please
        Sure, here are a few:
            -> showGoodThings
      + no, I am DONE
            -> sharing

    = iterate
     {Hope this helps|Those are interesting|I liked some of those}, do you want to see more? do you want to share?
      + More examples
        Of course, here are more:
            -> showGoodThings
      + Ok, but not sharing!
        No problem!
            -> nowTakeAMomentTo
      + user enters their experience here:
            -> userWritesGoodTh
    
    = showGoodThings
        ~counter = counter + 1
        //show 5 samples at random from {otherGoodThings}
        "Good thing"
        "Good thing"
        "Good thing"
        "Good thing"
        "Good thing"
      + {counter < 3}
            -> iterate
      + {counter > 2}
            -> sharing
      
    = sharing
    "That is all I have. Do you want to share?" 
    + No, thanks
    That is ok.
            -> nowTakeAMomentTo
      + user enters their experience directly here:
            -> userWritesGoodTh

    = userWritesGoodTh 
    "{goodThing}"
    {Super!|Great!|Nice!|Cool!} //PP: Different language selected with a random coin
        -> nowTakeAMomentTo
    
    = nowTakeAMomentTo 
    Now, take a moment to think about this good experience in as much detail as possible. 
    You could think about where you were, what happened, what thoughts were running through your mind, or what emotions (happy, excited, content, peaceful, etc.) you were feeling.  
      + Done
        - The next thing to do is to take a moment to think about what caused the experience. Focus on what you did to bring about this good thing.
          + Got it
            Great job! It’s not always easy to find the good things, but it’s the effort that matters most.
                -> Reaffirmation
          + I don't know
          + I need some tips
            - We play an important role in creating our own good experiences. For example, we might make plans to see friends, do something kind for someone else, or tell a joke. These positive actions can help us bring about more good things.
            So try to reflect on what action you took to bring about your good thing.
            + OK, I'm done
                -> Reaffirmation

==== Reaffirmation ====
# IMAGE: ../goodyimage.jpeg
.
Paying attention to good things as they are happening or remembering them after is an easy and fast way to improve your mood.  
Noticing good things also helps remind us that we can take action to add more good things into our daily routine.  
Keep trying to add good things into your daily life and then take notice and savour those small moments!  Or come back to chat with me and we can do it together. 🤤
    // go to Farewell module //
    -> END


//******************************************************************//
//******************************************************************//


==== Second_session ====
//system checks if first session engagement were positive/neutral *or* negative
# IMAGE: Goody.png
    . //this dot just helps display the image command above the text
      + if positive or neutral
        Hey you! I’m so glad you’ve come back to visit with me.
            -> pastThingShared
      + if negative
            -> Try_again_escape
    
    = Three_good_things
    Can you think of <strong>three</strong> good things?
      + Got 'em
            -> nowThinkAboutThe
      + I need examples
            -> sureThingExample
    
    = nowThinkAboutThe
    Now think about the details of these three good things. You could mentally retrace your steps, close your eyes and imagine you are there, or remember {how you|the emotions you} felt after having this experience.  
        //PP: the {...|...} configuration is used to denote different language used at different runs of the bot this could be selected with a random coin
      + Done
            -> share3Things
    
    = sureThingExample
    Sure thing. Examples might include doing an activity you enjoy, eating a really delicious meal, or meeting someone new. Are you done, or do you want to see examples of good experiences from other users?
      + More examples.
            -> showGoodThings2
      + Done
            -> share3Things
    
    = iterate
    {Hope this helps|Those are interesting|I liked some of those}, do you want to see more?
      + Yes
        Of course, here are more:
            -> showGoodThings2
      + No
        {OK|Alright}
        -> share3Things
                
    = showGoodThings2
        {Certainly|Of course}
        ~counter = counter + 1
        //show 5 samples at random from {otherGoodThings}
        "Good thing"
        "Good thing"
        "Good thing"
        "Good thing"
        "Good thing"
      + {counter < 3}
            -> iterate
      + {counter > 2}
            -> sharing
          
    = sharing
    That is all I have.
    Take some time to think about your experiences. Let me know when you are done.
      + Done
        -  -> share3Things
    
    = share3Things
    Do you want to share one of the good experineces?
      + No, I don't
        No problem
      + users enters new good thing:
        ~ goodThing = "Savoring a delicious tic tac mint"
        "{goodThing}"
        {Great!|Super!|Nice!|Cool!} //PP:Language selected with random coin
        - -> nextThinkAboutYo
      
    = nextThinkAboutYo
    Finally, think about your role in these experiences.  Think about what concrete actions you took to help make these experiences happen.
      + Alright
        - # IMAGE: ../goodyimage.jpeg
        .
        Sometimes we get into a habit of mostly noticing problems in life and not fully taking in the positive.  
        We can also sometimes discount the actions we can take to make positive experiences happen.  
        This is such a simple activity but it can really make a difference over time.  Making the good things happen and noticing them is a habit that we can train with just a small amount of effort!
        // go to Farewell module
        -> END
    
    
==== pastThingShared ====
//PP: added this section to check in case the user had provided a past goodThing, and use it in dialogue
  + there was a past thing
    Last time we chatted, you told me about this good experience: "{goodThing}".
  + there was NO past thing
    Last time we chatted, you explored something good that happened to you recently.
    - This time, let’s chat about <strong>three</strong> good things that happened to you in the last week. 
      -> Second_session.Three_good_things

==== Try_again_escape ====
    # IMAGE: Goody.png
    Hey, I know that our last chat wasn’t as good as it could have been.
     Do you want to try one more time, or talk to one of my buddies?
      + Try again
        Great!
            -> pastThingShared
      + Talk to another bot
        Sure, I will call one of them now.
        Keep trying to remember positive experiences, even if very small. I am sure it will eventually help reduce stress.
        // System selects a new character at random //
            -> END    
    
//******************************************************************//
//******************************************************************//


==== Third_session ====
//system checks if prior session assessment was positive/neutral *or* negative
  + if positive/neutral
    # IMAGE: Goody.png
    . //this dot just helps display the image command above the text
    Hi {userName}. It’s great to see you. I’ve been looking forward to chatting with you again.
        -> Refresher
  + if negative
        -> Try_again_escape

    = Refresher
    Do you want a refresher?
      + Yes, please
        You got it.
            -> Second_session.Three_good_things
      + I know how to do it
        Awesome!
        Let me know when you are done.
        - + Done!
            Great!
                -> Reaffirmation
