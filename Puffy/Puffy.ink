
// Lock Status
// unlocked
//

// ---- Puffy ----
# title: Puffy
# author: Pablo Paredes
// -----------------------------



VAR username = "Pablo"
VAR visit = "first"
VAR count1 = 4
VAR count2 = 4
VAR count3 = 4
VAR count4 = 4
VAR count5 = 6


-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        -> First_session
  + if second visit
        -> Second_session
  + if third visit
        -> Third_session
  + if fourth or later visit
        -> Fourth_session

-> END

==== First_session ====
    Hi {username}, my name is Puffy. I may seem a bit ethereal but I can help you use your breathing and imagination to help you feel less stressed in the moment.
    
    -> StartBreathingExercise
    
==== StartBreathingExercise ====
    
    Before we begin, make sure you are in a comfortable environment. 
    -> GuidedBreathing


==== GuidedBreathing ====

    Place one hand on your solar plexus, which is the point a few inches above your navel where your ribs start to separate. Let me know when you have found it.
    
    + Found it 
    
        Good. Now, let's relax by taking a couple of big, deep breaths, in through your nose and out through your mouth. Notice how your lungs rise and fall. Like this...
        
            [Insert gif here]
            
        Let me know when you feel a bit more relaxed
        
        -
            + Feel relaxed.
            
                Very Good
                
                -> EndGuidedBreathing
                
            + It's not working.
                Sorry to hear that. :( 
                Sometimes it takes a bit of practice to get used to it. Let's do it together this time.
                Should we start again?
                - 
                    + yes
                        sure
                        -> GuidedBreathing
                        
                    + no, let's move on
                        -> EndGuidedBreathing
                    
        
            
            
    == EndGuidedBreathing==
                        
        - Now, keep this deliberate breathing going. Now let's imagine a surge of energy rushing into your lungs with every inhale. 
        
        - Imagine that this energy is being stored in the solar plexus, right below your hand. And now, with every exhale, imagine that the energy is flowing into every inch of your body. You can play with this:  maybe you can see the energy as colors!
        
        -> EndExercise


==== IdentifyEmotion ====
-> END


==== EndExercise ===

I’ll leave you for a couple of moments, so you can focus on your exercise. There's no right or wrong number of breaths or amount of time.   Let me know when you feel you are done. 
    + Done
    -> WrapUp
    
==== WrapUp ====

Excellent. Breathing in this kind of conscious way tends to help us slow down and relax a bit.  It may seem simple, but it's a simple practice we can always have available.

    -> END


==== VisualizeTypicalResponse ====

    Now that you have an idea of what emotion you are feeling I want you to spend a minute or two thinking about how you typically react when you feel this way.

    It can be good to write this down on a piece of paper if you have time.  What are the thoughts that you think about yourself?  What is the tone or emotion behind those thoughts? 

    +I'm ready
        ->VisualizeFriendResponse
    +That's a lot     
        It can really help to write down your thoughts about yourself and the tone or emotion of those thoughts. We will work with this in next steps.  
        
        This part can be a bit tough but it really helps in the end. 
        
    -
    + Keep going.
        
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
        Connect user to an inkling that helps identifying emotions (Emoti) 
     
        ->END

-> END


==== VisualizeFriendResponse ====
    Okay great job.  The next step is imagine a good friend is in the same situation and feeling the way you are right now.  How would you respond to your friend?  What would you say to them?  What would the tone be?

    Spend a minute jotting down the things you would say and the tone.

    Let me know when you're ready.

    + I'm ready.
        ->CompareAndLearn
    + I'm stuck
        ->HelpWithFriendVisualization

-> END

==== HelpWithVisualization ====
If you are struggling with visualizing your emotions or thoughts, you are not alone.   Sometimes our minds are going so fast, or the emotions are so strong it's hard to focus enough to really be aware of it all.  It's like holding onto the wheel of a ship in the middle of a big storm - it's really hard!
    
    But this is a skill like any other: it gets better with practice.  And there are a few tricks that can help.
    
    + Like what? 
    
    One thing to try is to start by bringing your mind to the beginning of a difficult situation and remember the things and facts of the situation.  Facts such as 'I was sitting at home' or 'I was on a call with someone'.  Take a second til you have one or more in mind.
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
            
        -
        
        + Okay - now what?
            Good question.  It isn't always easy but you can now practice telling yourself those same things you would tell your friend. We can learn to treat ourselves more kindly and with more comprehension. 
            
            ->EndSessionOne
            
        -> END
        
        
        +No there isn't a difference
            ->NoDifference
       
-> END

==== HelpWithFriendVisualization ====

    Let me see if I can help with this step.  There are a few ways people get tripped up doing this. 

    One common experience is that people have a hard time being as kind or generous towards themselves as they would to a friend and so even though I'm asking to imagine what you would say to a friend you might still be stuck thinking of yourself in the situation. 
    + Yes that's right
        This is pretty common.  Just remember this is a skill that takes time to develop.  Do your best to stretch yourself to bring a slightly more kind view of your situation and feelings.  This part is meant to be a bit challenging because were growing a new more generous perspective of ourselves.
        
    + Hard for another reason
    
    
        Another way people struggle is if right now you don't have any close friends in your life.  One way to get around this is to imagine responding to a friend you were close to in the past, or how you would respond to a friend if you were close to them now.
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
This likely means that you already tend to give more kindness to yourself which is a great thing.  Have I got that right?
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

  + if positive or neutral
        -> SecondSessionPositive
  + if negative
        -> SecondSessionNegative


=== SecondSessionPositive ===

[Insert happy GIF here]
Ahhhhh I'm so glad you're back!  
Let's combine breathing and imagining again!

Do you want a refresher?

    + Give me a refresher
        Of Course!
        ->StartBreathingExercise
    
    + I know how to do it 
        Sounds Good
        -> EndExercise
    

->END

=== SecondSessionNegative ===

[Insert Sad GIF here]

Hey, sorry last time didn't work out.

Do you want to try one more time, or talk to one of my buddies?
    
    + Try Again
        ->FeltWorse
    +Something else
        ->FindNewBot
    -> END

->END

=== FeltWorse ===

I'm sorry to hear this.  Like I said, learning this kind of skill needs us to look at uncomfortable experiences a bit more closely, and that sometimes can make us feel worse.  
    
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

For this short session I want to help you identify clues for the most common difficult emotions that come up for you.
    
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

The final step is to come up with a small behavior you can take when you become aware your clue has comes up, which means you are feeling the stress or emotion.
    
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

Great job.  Now the next part seems simple but can be a bit tricky.  For the next week or until the next time we talk, try to say this sentence/phrase to yourself in your mind when you notice the clue. 


+Sounds good    

    So, remeber the 1st step is to become aware of the clue you discovered, which signals the emotion or stress is here.

    The 2nd step is to say softly to yourself - in the tone that you would speak to a friend with - the phrase you just came up with.
    
-

Give it a try this week!
    
    +Sounds like a plan!
        ->EndSessionTwo

->END



==== Third_session ====
//system checks if session engagement were positive/neutral *or* negative
  + if positive or neutral
        ->ThirdSessionPositive
  + if negative
        -> ThirdSessionNegative

// 


=== ThirdSessionPositive ===
[Insert Happy GIF]
I can't resist...but having you back is like a breath of fresh air.   So this time let's try something new, a technique called Box Breathing.
    
    ->BoxBreathingExercise
    

->END

=== ThirdSessionNegative ===

[Insert Sad GIF]
Sorry last time was not as expected.  
This time let's try something new, a technique called Box Breathing. 
    ->BoxBreathingExercise

->END

=== BoxBreathingExercise ===

As before, sit up straight but be comfortable. Let's prepare by slowly exhaling through your mouth to get all the air out of your lungs. Don't force it, but try to be aware of getting the air out.
    + I am ready
        Box breathing means to count every time you inhale, exhale and hold your breath in between.   I will give you instructions and help you with counting. 
        
            First, inhale slowly and deeply through your nose as we count to {count1}. Feel the air filling your lungs, and into your abdomen. Then, hold counting to {count2}. Exhale being concious of the air leaving your lungs, again counting to {count3}, and finally, hold again for {count4}.
            
            -
            
            Should we begin?
            
            + Let's begin
                Inhale slowly
                
                [Wait {count1} seconds]
                
                Hold
                
                [Wait {count2} seconds]
                
                Exhale slowly 
                
                [Wait {count3} seconds]
                
                Hold 
                
                [Wait {count4} seconds]
    
                - 
                
                How do you feel?
                 
                + I feel more relaxed
                    Great!
                    Now, let's do it together
                    -> BoxBreathingSecondPart
                
                + Not working
                    Sorry to hear that. :(  Sometimes it takes a bit of practice to get used to it. Let's do it together this time.
                    -> BoxBreathingSecondPart
                


=== BoxBreathingSecondPart ===
Follow me when you're ready! Remeber to inhale for {count1}, hold for {count2}, exhale for {count3}, and hold again for {count4}.
    + Ready!
    
        [Insert GIF that moves based on counter]
        
        -> AskForRepeat
        
        
=== AskForRepeat ===
Do you want me to repeat the exercise?

    + Yes
          -
            + Repeat everything
                Of course!
                ->BoxBreathingExercise
            + I'll just watch you
                Sure!
                ->BoxBreathingSecondPart
            + I know how to do it
                -> EndExercise
    
        
    + No, I am done 
        -> END



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

=== Fourth_session ===

    + Past engagement positive or neutral
        -> FourthSessionPositive
    + Past engagement negative
        -> FourthSessionNegative    

-> END



=== FourthSessionPositive ===
[Insert Happy GIF]
        Yep, balloons love it like I do! Let's get some calm air in your lungs!
        - 
        Do you want a refresher?
        
        + Yes, a refresher
            Of course!
            -> ChooseTechnique
        + I know what to do 
            -> EndExercise
    

->END

=== FourthSessionNegative ===

[Insert Sad GIF]
    Hey, sorry last time was not ideal for you.
    - 
    Do you want to try one more time? 
    
    + Yes
        -> ChooseTechnique
    + No
        -> FindNewBot

->END


==== ChooseTechnique ====

Which technique do you want to try?
    + Basic slow breathing
        -> BoxBreathingExercise
    + Box breathing
        -> BasicVSAdvancedBreathing
    + You Pick
    - 
        [Bot does random choice]
        + Random Choice 1 (Slow Breathing)
            -> BoxBreathingExercise
        + Random Choice 2 (Box Breathing vs Advanced)
            -> BasicVSAdvancedBreathing
    

-> END


==== BasicVSAdvancedBreathing ====
    Do you want to try basic box breathing again, or something a little more advanced?
    + Basic 
        [Set count to simple pattern e.g. ({count1},{count1},{count1},{count1})]
        -> PrepareBoxBreathing
    + Advanced 
        [Set count to complex pattern e.g. ({count1},{count5},{count1},{count5})]
        -> PrepareBoxBreathing
    
==== PrepareBoxBreathing ====
    Alright. Inhale slowly and deeply through your nose and count to {count1} like last time. Then hold it for a {count5} count.
    Feel the calming air fill your lungs, and feel your energy rise.
    -> BoxBreathingSecondPart

















