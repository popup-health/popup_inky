// Edits Summary
// DD 10/11/2021 Finished first draft of Treat with 3 different sessions

// Lock Status
// Locked by DD
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
    Hi {username}, I’m Treat. I love talking about how to best respond to ourselves when having difficult feelings that cause us stress.  I'm excited to see if I can be helpful to you!


    -> IdentifyEmotion



==== IdentifyEmotion ====

    A good place to start is to figure out what emotions you're feeling right now.  Maybe it's anger, sadness, anxiety, frustration, stress, or something else altogether.

    + I'm feeling: userinput
        Great - it is actually quite difficult sometimes to know what emotion you're feeling so good job! 
        ->VisualizeTypicalResponse
    + I'd rather not say
        No problem - this process can still be helpful without sharing the details.  What is important is that you know what emotion you are feeling.
        ->VisualizeTypicalResponse
    + I need help figuring this out
        ->HelpIdentifyEmotions


==== VisualizeTypicalResponse ====

    Now that you have an idea of what emotion you are feeling I want you to spend a minute or two thinking about how you typically react when you feel this way.  

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

    Are you struggling with knowing what emotion you are feeling or are you not feeling any strong emotions at all?
    
    +No emotions
        ->NoEmotion
    +Not sure which emotion
        Connect user to Bot that helps identifying emotions
        ->END
    +This isn't the right exercise
        ->FindNewBot

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

    If you are struggling with visualizing your own situation and the emotions or the thoughts (or both!) you are not alone.  This is a very tricky thing to do.  Sometimes our minds are going so fast, or the emotions are so strong it's hard to stay focused enough to really be aware of it all.  It's kind of like holding onto the wheel of a ship in the middle of a big storm - it's really hard!
    
    But what's great is that this is a skill like any other that gets better with practice.  And as with any skill there are a few tricks that can help.
    
    One thing to try is to start by bringing your mind to the beginning of the difficult situation and remember the things facts of the situation.  Facts such as 'I was sitting at home' or 'I was on a call with someone'.
    
    Once you have brought to mind the situation see if you can remember the thoughts that ran through your mind.  Usually when a situation bothers us we have an immediate reaction that shows up as a thought in our minds and that thought has a strong charge to it.  This charge gives us a hint as to the emotion we were feeling.
    
    So with the situation in mind notice the thoughts and then the emotions.
    
    Did that help?
        +Yes - I'm ready to continue
            ->VisualizeFriendResponse
        +Not really
            ->FindNewBot

==== FindNewBot ====

    No problem at all.  Sometimes it's a bit tricky to figure out which of us bots is going to be most helpful.  Let me see if we can find someone who can help you right now!
    
    Can you give a short bit of feedback to me so I can improve first?
    
    FEEDBACK __________
    
    [Find a new bot for user.]

-> END

==== CompareAndLearn ====
    Now the final step is to look at how you would typically respond to yourself and compare it to how you would respond to a good friend.

    Is there a difference?

        + Yes I'm much harder on myself
            Nice job noticing that difference! It can be helpful to think about why that might be.  We often hold ourselves to higher standards than we do others.  
            
            ->EndSessionOne
            
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
            You are on the right track already!  
            
            ->EndSessionOne
            
        + Not quite right.
            Okay well please let me know why you see no difference here:  USER INPUT
            
            ->EndSessionOne


-> END

=== EndSessionOne ===

    What a great start!  It is really good to continue to practice being a bit kinder to ourselves and next time we work together we can talk more about how to do that.
    
    I hope to see you again soon!

->END




==== Second_session ====
//system checks if first session engagement were positive/neutral *or* negative

    If you remember our first session together we looked at how you typically respond to yourself when you are feeling stressed and compared that response to how you might respond to a good friend in a similar situation.

  + if positive or neutral
        -> SecondSessionPositive
  + if negative
        -> SecondSessionNegative


=== SecondSessionPositive ===

    I'm glad that you found that first session helpful.  Let's jump into a helpful next step to build on that success.
    
    ->IdentifyTrigger
    

->END

=== SecondSessionNegative ===

    I'm sorry to hear that the first session was negative.  Looking at difficult emotions and stress can be very hard and sometimes when we first learn a new skill we can feel a bit worse from it.
    
    Can you let me know what went wrong?
    
    +Exercise made me feel worse
        ->FeltWorse
    +Exercise wasn't what I needed
        I'm sorry to hear that.  The good news is I have something new to teach today that hopefully will help this time!
        ->IdentifyTrigger
    +Other reason
        User INPUT
        Okay - thanks for the feedback.  Some of my humans will take a look so I can learn from this!
        Lets jump into a new exercise now.
        ->IdentifyTrigger
    -> END

->END

=== FeltWorse ===

    I'm sorry to hear this.  Like I said learning this kind of skill needs us to look at our experience a bit more closely which sometimes can make us feel worse.  The good news is the more we do it the easier it gets.
    
    Would you like to try again with this idea in mind?
    
    +Yes
        ->IdentifyEmotion
    +No show me new exercise
        Okay no problem.  Let's jump into another step
        ->IdentifyTrigger
    +Different bot 
        ->FindNewBot

->END

=== IdentifyTrigger ===

    For this short session I want to help you identify triggers for the most common difficult emotions that come up for you.
    
    To start take a minute to reflect on the most common stress or difficult emotion that comes up for you.  It might be the same stress or emotion that came up in our first session together.
    
    When you have an emotion or stress in mind let me know.
    
    +Got one - ready.
        ->TriggerForEmotion
    +Different bot 
        ->FindNewBot
    

->END

=== TriggerForEmotion ===

    Now I want you to spend a minute reflecting on what a common aspect of the experience of this stress or emotion is.  It might be a physical feeling like a knot in your stomach when you are nervous, or tension in your jaw when your angry.  It could also be a behavioral cue like raising your voice, or going quiet, or biting your nails.
    
    Once you have an idea of a consistent behavior or feeling that is a clue to the emotion or stress you feel let me know and we can continue.
    
    +I'm ready to keep going.
        ->SelfTalkForCue
    +Different bot 
        ->FindNewBot
    

->END

=== SelfTalkForCue ===

    The final step is to come up with a small behavior you can take when you become aware you are feeling the stress or emotion.
    
    A good place to start is to think of a sentence you can say to yourself.  This sentence can come from the work you did in our first session.  What would you say to a good friend who was feeling this way to help reassure them and give them a bit of confidence that they can handle it?
    
    Once you have an idea of the short sentence or phrase let me know.
    
    +Got it - I'm ready.
        ->FinalPlanForTrigger
    +Different bot 
        ->FindNewBot
    

->END

=== EndSessionTwo ===

    Great good luck with this.  
    
    One small suggestion is to keep a journal every day of when you do this and note down if it helps you to feel better or not or any other insight that comes from it.
    
    You can also consider using some of the skills that my friends (other bots) teach as a way of coping with the strong emotion.  Puffy knows a few cool tricks with breathing for example that you can use in addition to saying the phrase you came up with.
    
    Best of luck and I can't wait to hear how it goes next time we talk.
    
    

->END

=== FinalPlanForTrigger ===

    Great job.  Now the next part is simple but can be a bit tricky.  For the next week or until the next time we talk try to say this sentence/phrase to yourself in your mind when you notice the emotion or stress is present for you.  
    
    The first task is to first become aware of the emotion which is why you identified the clue.
    
    The second part is to say softly to yourself - in the tone that you would speak to a friend with - the phrase you just came up with.
    
    Do you think you want to give this a try?
    
    +Yes - sounds like a plan!
        ->EndSessionTwo
    +Different bot 
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

    I'm sorry to hear that the last session was negative.  Looking at difficult emotions and stress can be very hard and sometimes when we first learn a new skill we can feel a bit worse from it.
    
    Can you let me know what went wrong?
    
    +Exercise made me feel worse
        ->FeltWorseFromSession2
    +Exercise wasn't what I needed
        I'm sorry to hear that.  The good news is I have something new to teach today that hopefully will help this time!
        ->Session3
    +Other reason
        User INPUT
        Okay - thanks for the feedback.  Some of my humans will take a look so I can learn from this!
        Lets jump into a new exercise now.
        ->Session3
    -> END

->END

=== FeltWorseFromSession2 ===

    I'm sorry to hear this.  Like I said learning this kind of skill needs us to look at our experience a bit more closely which sometimes can make us feel worse.  The good news is the more we do it the easier it gets.
    
    Would you like to try the last exercise we did with this idea in mind?
    
    +Yes
        ->IdentifyTrigger
    +No show me something new
        Okay no problem.  Let's get started
        ->Session3
    +Different bot 
        ->FindNewBot

->END

=== Session3 ===

    This next part is fun because it revolved around bringing in some of my friends to help out.  
    
    So far we've worked on learning how to take a different more friendly perspective towards ourselves as well as to identify triggers and practice talking to ourselves as we would a friend.
    
    This next part is to bring in some skills from the other bots to help you feel less stressed when a strong emotion shows up.
    
    Are you ready to keep going?
    
    +Yes
        ->PickABot
    +Different bot 
        ->FindNewBot

->END

=== PickABot ===

    For the next week what I want you to try is to learn a new skills from one of my friends and use it whenever a difficult emotion or stressor shows up.  You have a lot of options and it depends a bit on who you think would teach the most useful skill.
    
    If you have a hard time keeping strong boundaries and saying no when you are stressed or feel a strong emotion you can talk to Nope.
    
    If you have a hard time staying calm in your body you can learn some cool breathing techniques from Puffy
    
    If you find that difficult thoughts stay stuck in your mind I suggest you have a chat with my friend Let Go 
    
    And another option would be to talk to HalfFull if you notice you tend to think about the negatives more than the positives of a situation.
    
    Once you learn the skill the final step is to integrate it with the process we've been through together of noticing strong emotions and stress through a cue, speaking to yourself as a friend, and then using the new skills that you learn from the other bots.
    
    +Enter next bot here:

->END