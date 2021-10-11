// Edits Summary

// Edit log 
// DD - Locked

// ---- Treat ----
# title: Treat
# author: A PopBot Intervention By David Denis
// -----------------------------



VAR username = "David"
VAR visit = "first"

-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        -> First_session
  + if second visit
        -> Second_session
  + if third or later visit
        -> Third_session

-> END

==== First_session ====
    Hi {username}, I’m Treat. I love talking about how to best respond to ourselves when having difficult feelings.  I'm excited to see if I can be helpful to you!


    -> Feelings




==== Second_session ====
//system checks if first session engagement were positive/neutral *or* negative
  + if positive or neutral
        -> Feelings
  + if negative
        -> Feelings



==== Third_session ====
//system checks if first session engagement were positive/neutral *or* negative
  + if positive or neutral
        -> Feelings
  + if negative
        -> Feelings

==== Feelings ====

    A good place to start is to figure out what emotions you're feeling right now.  Maybe it's anger, sadness, anxiety, frustration, stress, or something else altogether.

    + I'm feeling: userinput
        Great - it is actually quite difficult sometimes to know what emotion you're feeling so good job! 
        ->VisualizeTypicalResponse
    + I'd rather not say but I know what I'm feeling
        No problem - this process can still be helpful without sharing the details.  What is important is that you know what emotion you are feeling.
        ->VisualizeTypicalResponse
    + I'm not feeling any emotion right now
        ->NoEmotion
    + I need help figuring
        ->HelpIdentifyEmotions


==== VisualizeTypicalResponse ====

    Now that we know you are feeling 'X' I want you to spend a minute or two thinking about how you typically respond to yourself when you feel this way.  

    It can be good to write this down on a piece of paper if you have time.  What are the thoughts that you think about yourself?  What is the tone or emotion behind those thoughts?

    This part can be a bit tough but it really helps in the end!

    Let me know when your ready to move to the next step.

    +I'm ready
        ->VisualizeFriendResponse
    +I'm stuck
        ->HelpWithVisualization
    +This isn't the right exercise for me
        ->FindNewBot


==== NoEmotion ====

    If you are not feeling any strong emotions the best way to start is to notice the thoughts running in your mind.  We all talk to ourselves in different ways.

    Spend a minute to do this now just by noticing the thoughts running through your mind.  It can be very helpful to write down the thoughts if you have time.  See if you can also notice the tone of the thoughts too (the tone of voice if they were being said out loud).

    Let me know when your ready to move to the next step.

    +I'm ready
        ->VisualizeFriendResponse
    +I'm stuck
        ->HelpWithVisualization
    +This isn't the right exercise for me
        ->FindNewBot


==== HelpIdentifyEmotions ====

    Connect user to Bot that helps identifying emotions

-> END


==== VisualizeFriendResponse ====
    Okay great job.  The next step is to do the same thing but imagine a good friend is in the same situation and feeling the way you are right now.  How would you respond to your friend?  What would you say to them?  What would the tone be?

    Spend a minute jotting down the things you would say and the tone.

    Let me know when you're ready.

    + I'm ready.
        ->CompareAndLearn
    + I'm stuck
        ->HelpWithFriendVisualization
    + This isn't the right exercise for me
        ->FindNewBot

-> END

==== HelpWithVisualization ====

    If you are struggling with visualizing your own situation and the emotions or the thoughts (or both!) you are not alone.  This is a very tricky thing to do.  Sometimes our minds are going so fast, or the emotions are so strong it's hard to stay focused enough to really be aware of it all.  It's kind of like holding onto the wheel of a ship in the middle of a big storm.
    
    But what's great is that this is a skill like any other that gets better with practice!  And as with any skill there are a few tricks that can help.
    
    One thing to try is to start by bringing your mind to the beginning of the difficult situation and remember the things facts of the situation.  Facts such as 'I was sitting at home' or 'I was on a call with someone'.
    
    Once you have brought to mind the situation see if you can remember the thoughts that ran through your mind.  Usually when a situation bothers us we have an immediate reaction that shows up as a thought in our minds and that thought has a strong charge to it.  This charge gives us a hint as to the emotion we were feeling.
    
    So with the situation in mind notice the thoughts and then the emotions.
    
    Did that help?
        +Yes - I'm ready to continue
            ->VisualizeFriendResponse
        +Not really
            ->FindNewBot

==== FindNewBot ====

    Find a new bot for user.

-> END

==== CompareAndLearn ====
    Now the final step is to look at how you would typically respond to yourself and compare it to how you would respond to a good friend.

    Is there a difference?

        + Yes I'm much harder on myself
            Nice job noticing that difference! Why do you think that is?  Take a moment to consider that and then I can give you some ideas myself. 
            
        -> END
        
        
        +No there isn't a difference
            ->NoDifference
       
-> END

==== HelpWithFriendVisualization ====

    Let me see if I can help with this step.  There are a few ways people get tripped up doing this. 
    
    One common experience is that people have a hard time being kind or generous towards themselves and even though I'm encouraging you to imagine what you would say to a friend it's still hard to imagine a different way of responding.  If this is true for you then remember this is a skill that takes time to develop.  Do your best to stretch yourself to bring a slightly more kind view of your situation and feelings.
    
    Sometimes it can be hard if you don't have any close friends right now in your life.  One way to get around this is to imagine responding to a friend you were close to in the past, or how you would respond to a friend if you were close to them.
    
    I hope this helps!
    
    Lets try again.
    
    Remember the exercise is to imagine a good friend is in the same situation and feeling the way you are right now.  How would you respond to your friend?  What would you say to them?  What would the tone be?

    Spend a minute jotting down the things you would say and the tone.

    Let me know when you're ready.
    
    + I'm ready.
        ->CompareAndLearn
    + This isn't the right exercise for me
        ->FindNewBot
    

-> END

==== NoDifference ====
This likely means that you already tend to more kindness towards yourself which is a great thing.  Have I got that right?
        + Yes you do.
            Education on self bias
            -> END
        + Not quite right.
            -> END


-> END

==== LearningPoints ====

    It can be really 


-> END
