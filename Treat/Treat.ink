//locked in by FV 

//LOCKED for functional and copy edits Robert Gehorsam 1:45PM 10132021

// Edits Summary
// DD 10/14/2021 Incorporated Robert's review suggestions
// DD 10/13/2021 Incorporated Marco's review suggestions
// DD 10/11/2021 Finished first draft of Treat with 3 different sessions and small edits

// Lock Status
// unlocked
//

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
Hi {username}, I’m Treat. I help people learn how to best respond when they have difficult feelings that cause stress.  I'm excited to see if I can be helpful to you!


    -> IdentifyEmotion



==== IdentifyEmotion ====

    A good place to start is to figure out what emotions you're feeling right now.  Maybe it's anger, sadness, anxiety, frustration, stress, or something else altogether.

    + I'm feeling: userinput
        Great - it is actually quite difficult sometimes to know what emotion you're feeling so good job! 
        ->VisualizeTypicalResponse
    + I'd rather not say
        No problem - this process can still be helpful without sharing the details.  What's important is that you know what emotion you are feeling.
        ->VisualizeTypicalResponse
    + I need help 
        ->HelpIdentifyEmotions


==== VisualizeTypicalResponse ====

    Now that you have an idea of what emotion you are feeling I want you to spend a minute or two thinking about how you typically react when you feel this way.

    It can be good to write this down on a piece of paper if you have time.  What are the thoughts that you think about yourself?  What is the tone or emotion behind those thoughts? 
    
    +That's alot     
        It is so it can help to write down your thoughts about yourself and the tone or emotion of those thoughts. 
    -
    + I see   
        This part can be a bit tough but it really helps in the end. 
    -
    +I'm ready
        ->VisualizeFriendResponse
    +I'm stuck
        ->HelpWithVisualization


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

    Are you struggling with identifying what emotion you are feeling or are you not feeling any strong emotions at all?
    
    +No emotions
        ->NoEmotion
    +Not sure which emotion
        Connect user to an inkling that helps identifying emotions //RG: or if not available, just a random one.
        ->END

-> END


==== VisualizeFriendResponse ====
    Okay great job.  The next step is to do the same thing but imagine a good friend is in the same situation and feeling the way you are right now.  How would you respond to your friend?  What would you say to them?  What would the tone be?

    Spend a minute jotting down the things you would say and the tone.

    Let me know when you're ready.

    + I'm ready.
        ->CompareAndLearn
    + I'm stuck
        ->HelpWithFriendVisualization

-> END

==== HelpWithVisualization ====
  If you are struggling with visualizing your own situation, emotions or thoughts, you are not alone.   Sometimes our minds are going so fast, or the emotions are so strong it's hard to focus enough to really be aware of it all.  It's like holding onto the wheel of a ship in the middle of a big storm - it's really hard!
    
    But this is a skill like any other: it gets better with practice.  And there are a few tricks that can help.
    
    + Like what? 
    
    One thing to try is to start by bringing your mind to the beginning of the difficult situation and remember the things facts of the situation.  Facts such as 'I was sitting at home' or 'I was on a call with someone'.  Take a second til you have one or more in mind.
    -

    + OK, ready
    
    Once you have brought to mind the situation see if you can remember the thoughts that ran through your mind.  Usually when a situation bothers us we have an immediate reaction that shows up as a thought in our minds and that thought has a strong emotional charge to it.  This charge gives us a hint as to the emotion we were feeling.
    
    So with the situation in mind notice the thoughts and then the emotions.
    
    -
    
    Did that help?
        +Yes - I'm ready to continue
            ->VisualizeFriendResponse
        +Not really
            ->FindNewBot

==== FindNewBot ====

No problem at all.  Sometimes it's a bit tricky to figure out who among my pals and I is going to be most helpful.  Let me see if I can find someone who can help you right now!
    
Can you give a short bit of feedback to me so I can improve first?
    
FEEDBACK __________
    
[Find a new inky for user.]

-> END

==== CompareAndLearn ====
    Now the final step is to look at how you would typically respond to yourself and compare it to how you would respond to a good friend.

    Is there a difference?  

        + I'm harder on myself
            Nice job noticing that difference! It can be helpful to think about why that might be.  We often hold ourselves to higher standards than we do others.  
            
            ->EndSessionOne
            
        -> END
        
        
        +No there isn't a difference
            ->NoDifference
       
-> END

==== HelpWithFriendVisualization ====

    Let me see if I can help with this step.  There are a few ways people get tripped up doing this. 
    
    One common experience is that people have a hard time being as kind or generous towards themselves as they would to a friend. 
    
    If this is true for you then remember this is a skill that takes time to develop.  Do your best to stretch yourself to bring a slightly more kind view of your situation and feelings.
    
    
    + Wow, it's hard.
    
        Indeed... it can be hard if right now you don't have any close friends in your life.  One way to get around this is to imagine responding to a friend you were close to in the past, or how you would respond to a friend if you were close to them now.
    -
    
    I hope this helps!
    
    So now, let's try again.
    
    Remember the exercise is to imagine a good friend in the same situation, who feels the way you do right now. What would you say to them?  What would the tone be?

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
            You are on the right track already!  
            
            ->EndSessionOne
            
        + Not quite right.
            Okay well please let me know why you see no difference here:  USER INPUT
            
            ->EndSessionOne


-> END

=== EndSessionOne ===

What a great start!  It is really good to continue to practice being a bit kinder to ourselves. Next time we work together we can talk more about how to do that.
    
    I hope to see you again soon!

->END




==== Second_session ====
//system checks if first session engagement were positive/neutral *or* negative

If you remember our first session together we looked at how you typically respond to yourself when you are feeling stressed and then compared that response to how you might respond to a good friend in a similar situation.

  + if positive or neutral
        -> SecondSessionPositive
  + if negative
        -> SecondSessionNegative


=== SecondSessionPositive ===

I'm glad that you found that first session helpful.  Let's jump into a helpful next step to build on that success.
    
    ->IdentifyTrigger
    

->END

=== SecondSessionNegative ===

I'm sorry to hear that the first session was not helpful enough.  Facing difficult emotions and stress can be very hard. And, sometimes when we first learn a new skill we can feel a bit worse from it.
    
Can you let me know what went wrong?
    
    +Made me feel worse
        ->FeltWorse
    +Wasn't what I needed
        I'm sorry to hear that.  The good news is I have something new to teach today that hopefully will help this time!
        ->IdentifyTrigger
    +Other reason
        User INPUT
        Okay - thanks for the feedback.  Some of my human friends will take a look so I can learn from this!
        Let's jump into a new exercise now.
        ->IdentifyTrigger
    -> END

->END

=== FeltWorse ===

I'm sorry to hear this.  Like I said learning this kind of skill needs us to look at uncomfortable experiences a bit more closely, and that sometimes can make us feel worse.  
    
The good news is the more we practice the easier it gets.  A very common experience when learning a new skill like this is for things to feel a bit extra stressful at first and then quickly improve as you keep going.
    
Would you like to try the exercise from last session again with this idea in mind?
    
    +Yes
        ->IdentifyEmotion
    +Show me new exercise
        Okay no problem.  Let's jump into another step.
        ->IdentifyTrigger
    +Something else
        ->FindNewBot
->END

=== IdentifyTrigger ===

For this short session I want to help you identify triggers for the most common difficult emotions that come up for you.
    
To start, take a minute to reflect on a common stress or difficult emotion that comes up for you.  It might be the same stress or emotion that came up in our first session together.
    
When you have an emotion or stress in mind let me know.
    
    +Got one - ready.
        ->TriggerForEmotion

->END

=== TriggerForEmotion ===

Now spend a minute reflecting on what a common aspect of the experience of this stress or emotion is.  It might be a physical feeling like a knot in your stomach when you are nervous, or tension in your jaw when your angry.  It could also be a behavioral cue like raising your voice, or going quiet, or biting your nails.
    
Once you have an idea of a consistent behavior or feeling this will be your *clue*. This clue will help you to be aware of the emotion or stress you feel so you can take a helpful next step.
    
    + Ready to continue.
        ->SelfTalkForCue

->END

=== SelfTalkForCue ===

The final step is to come up with a small behavior you can take when you become aware you are feeling the stress or emotion.
    
A good place to start is to think of a sentence you can say to yourself.  This sentence can come from the work you did in our first session.  What would you say to a good friend who was feeling this way that would help reassure them and give them a bit of confidence that they can handle it?
    
Once you have an idea of the short sentence or phrase let me know what it is if you're willing.
    
    +Got it - I'm ready.
        ->FinalPlanForTrigger
    +Got but no sharing
        ->FinalPlanForTrigger

->END

=== EndSessionTwo ===

Great good luck with this.  
    
One small suggestion is to keep a journal every day of when you do this and note if it helps you feel better or not.... or any other insight that comes from this process.
    
You can also consider using some of the skills that my pals teach as a way of coping with strong emotion.  For example, Puffy knows a few cool tricks with breathing that you can use in addition to saying the phrase you came up with.
    
Best of luck and I can't wait to hear how it goes next time we talk.
    
    

->END

=== FinalPlanForTrigger ===

Great job.  Now the next part seems simple but can be a bit tricky.  For the next week or until the next time we talk try to say this sentence/phrase to yourself in your mind when you notice the emotion or stress is present for you.  
    
The first task is to become aware of the emotion which is why you identified the clue to the stress or emotion you feel earlier in this session.
    
    The second part is to say softly to yourself - in the tone that you would speak to a friend with - the phrase you just came up with.
    
    Give it a try!
    
    +Sounds like a plan!
        ->EndSessionTwo
    +Something else
        ->FindNewBot

->END



==== Third_session ====
//system checks if session engagement were positive/neutral *or* negative
  + if positive or neutral
        ->ThirdSessionPositive
  + if negative
        -> ThirdSessionNegative

// 


=== ThirdSessionPositive ===
I'm glad that you found that your last session was helpful.  Let's jump into a helpful next step to build on that success.
    
    ->Session3
    

->END

=== ThirdSessionNegative ===

I'm sorry to hear that the last session was wasn't helpful enough.  Looking at difficult emotions and stress can be very hard and sometimes when we first learn a new skill we can feel a bit worse from it.
    
Can you let me know what went wrong?
    
    +Made me feel worse
        ->FeltWorseFromSession2
    +Wasn't what I needed
        I'm sorry to hear that.  The good news is I have something new to teach today that hopefully will help this time!
        ->Session3
    +Other reason
        User INPUT
        Okay - thanks for the feedback.  Some of my human friends will take a look so I can learn from this!
        Lets jump into a new exercise now.
        ->Session3
    -> END

->END

=== FeltWorseFromSession2 ===

I'm sorry to hear this. As I said earlier, learning this kind of skill needs us to look at our experience a bit more closely and that sometimes can make us feel worse.  

But the good news is the more we practice the easier it gets!  Knowing that sometimes we might feel a little worse before we start to feel much better from practice can be really helpful to keep us moving forward.
    
    With this in mind, would you like to try the previous exercise? 
    
    +Yes
        ->IdentifyTrigger
    +No, something new
        Okay no problem.  Let's get started.
        ->Session3
    +Something else
        ->FindNewBot

->END

=== Session3 ===

This next part can be fun because it revolves around bringing in some ideas from some of my friends to help out.  
    
So far we've worked on learning how to take a different more friendly perspective towards ourselves as well as to identify triggers and practice talking to ourselves as we would a friend.
    
We'll bring in some skills from some of my pals to help you feel less stressed when a strong emotion shows up.
    
    Let's keep going! 
        ->PickABot
->END

=== PickABot ===
//RG: oh boy.  I don't know that we have the ability to do this. I love the idea, but in order to be effective at learning, our algorithms need to be able to do the selection right now, not let the user choose.  I don't immediately have an alternate approach but I ask you to think about a simple to implement alternative.  One element of a solution might be to provide connections to external resources, but I do not think that can be the only thing.

For the next week what I want you to try is to learn a new skill from one of my friends and use it whenever a difficult emotion or stressor shows up.  You have a lot of options and it depends a bit on who you think would teach the most useful skill.
    
If you have a hard time keeping strong boundaries and saying no when you are stressed or feel a strong emotion you can talk to Nope.
    
If you have a hard time staying calm in your body you can learn some cool breathing techniques from Puffy
    
If you find that difficult thoughts stay stuck in your mind I suggest you have a chat with my friend Let Go 
    
And another option would be to talk to HalfFull if you notice you tend to think about the negatives more than the positives of a situation.
    
Once you learn the skill the final step is to integrate it with the process we've been through together of noticing strong emotions and stress through a cue, speaking to yourself as a friend, and then using the new skills that you learn from my friends.
    
    +Enter next Inky here:
    
    -> EndSessionThree

->END

=== EndSessionThree ===

    Great choice!  X is a good friend and really complements the skills you started learning with me.  If you ever want to come back for a refresher don't hesitate to start a new session with me.
    
    Good luck!

->END