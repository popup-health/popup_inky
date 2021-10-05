//LOCKED by Pablo

// Edits Summary

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

-> END

==== VisualizeTypicalResponse ====

Now that we know you are feeling 'X' I want you to spend a minute or two thinking about how you typically respond to yourself when you feel this way.  

It can be good to write this down on a piece of paper.  What are the thoughts that you think about yourself?  What is the tone or emotion behind those thoughts?

This part can be a bit tough but it really helps in the end!

Let me know when your ready to move to the next step.

    + I'm ready
        ->VisualizeFriendResponse
    +I'm stuck
        ->HelpWithVisualization
    +This isn't the right exercise for me
        ->FindNewBot

-> END

==== NoEmotion ====



-> END

==== HelpIdentifyEmotions ====



-> END


==== VisualizeFriendResponse ====
Okay great job.  The next step is to do the same thing but imagine a good friend is feeling the way you are right now.  How would you respond to your friend?  What would you say to them?  What would the tone be?

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



-> END

==== FindNewBot ====



-> END

==== CompareAndLearn ====
Now the final step is to look at how you would typically respond to yourself and compare it to how you would respond to a good friend.

Is there a difference?

    + Yes I'm much harder on myself
        Why do you think that is?  Take a moment to consider that and then I can give you some ideas myself.
        
        Education on self-bias
        
        -> END
        
    +No there isn't a difference
        ->NoDifference
       

-> END

==== HelpWithFriendVisualization ====



-> END

==== NoDifference ====
This likely means that you already tend to more kindness towards yourself which is a great thing.  Have I got that right?
        + Yes you do.
            Education on self bias
            -> END
        + Not quite right.
            -> END


-> END
