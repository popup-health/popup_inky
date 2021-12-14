
// Lock Status
// unlocked
//

// ---- Emoti ----
# title: Emoti
# author: Federica
# Technique: Emotional Awareness
// -----------------------------



VAR username = "Pablo"
VAR visit = "first"
VAR first_session_emotion = "Joy"
VAR second_session_emotion = "Anger"



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
    Hi {username}. I’m Emoti. I’m here to help you identify what you’re feeling. 

    You know those moments when you are having many emotions at the same time, but don’t know what to do with them?
    
    + Yeah, been there.
    + Sometimes
    - 
    Well, with these tools you’ll see the power of identifying and naming what you are feeling, while also learning to recognize what triggered your emotions. 

	+ Sounds interesting
	- 
	The best part is that with these tools you’ll be able to choose how to respond instead of continually reacting. 

    Wanna try? 

    + Yeah!
        -> Start_path_A
    + Tell me more
        -> More_Info_Path_A

     
==== More_Info_Path_A ==== 
    When strong emotions appear, instead of reacting or fighting with what we are feeling, we can identify them and put them into words. 
    With time and practice, we get better at knowing what we are feeling and why. This skill is called emotional awareness. 
    It helps us understand what we need and want, it helps us build healthier relationships, resolve conflicts and move past difficult feelings with more ease. 

    Do you want to try it now? 
    
    + Let's do it
        -> Start_path_A
    
==== Start_path_A ====

Okay, let’s do it.

Let’s begin doing some deep-breathing exercises so we can center ourselves and be in this moment fully. 

Place your hand in your belly and take 3 deep breaths, feeling the motion of your breath in your body.  

    + Done 
    - 
    Now let us identify how you are feeling today. 
    
    These are the 5 core emotions: 
    
     Disgust ( :@ emoji)
     Sadness ( :( emoji)
     Fear ( :o emoji)
     Anger ( >:I emoji)
     Joy ( :D emoji)
    
    Do you know which of them is prevalent in you now or do you want me to explain what these emotions mean?
    
        + I already know
            -> Write_emotion
        + Explain them to me
            -> Explain_emotions

== Explain_emotions ==
    
    We feel disgust when faced with something unpleasant. 
    We feel sadness when we lose something valuable. 
    We feel fear when our safety or wellbeing is threatened. 
    We feel anger when we are mentally or physically blocked, or need to defend ourselves. 
    We feel enjoyment when we experience novelty or comfort. 
    
    Which of them is prevalent in you know? 
        -> Write_emotion
    -> END
    
== Write_emotion ==
        Writing out the emotion always helps.
        
        + Write it here: (User input)
            -> Continue_PathA
        + Prefer not to say
            -> Continue_PathA

== Continue_PathA == 
    Ok, great that you identified it. That is a very important part of the process.

    Now, can you identify how intensely you are feeling it on a scale from 1 to 10? 
        - 
        + 1
        + 2
        + 3 
        + 4
        + 5 
        + 6
        + 7 
        + 8 
        + 9 
        + 10
        - 
        
        -> Emotion_exercise
        
        
== Emotion_exercise ==
        
    Let’s do an exercise together with this emotion and you can check later if its intensity has diminished. 
    
         + Ok, let’s do it. 
    
    Take some deep breaths.
    
    Now name the emotion softly in your mind, as if you could observe it from afar.
    
    “Fear is here”,  “anger is here”, whatever the emotion is…
        - 
        + Done 
        
    Now give your full attention to any feeling of tension in your body.  
    
    Identify where you feel this emotion in your body. 
    
    Usually strong emotions show up as uncomfortable body sensations, so see if you notice anything.
    - 
        + Felt it
            -> End_Path_A
       
        + Not feeling it
            Sometimes it can be hard to find where these emotions are expressing in our bodies. You may find it helpful to close your eyes. 
            Try asking your body, ‘Where does my x emotion live, and how does it feel within me?’ 
            You don’t even need to find words to describe what you’re feeling: just feel what you’re feeling. 
            Sense into your body, starting at your head and then moving down through your torso, including your muscles and even your heart, lungs, and guts. 
            Now with these tips in mind. Identify where you feel this emotion in your body. 
            - 
                 + Felt it
                     -> End_Path_A
              + Still didn't feel it
                It's ok, learning this skill takes time. But even including this step and thinking about it helps. 
                    -> End_Path_A
    
    -> END


=== End_Path_A ===
    
    By focusing on the body, you’re not-focusing on the stories in your mind, which tend to exacerbate the challenging emotions.
    
    Now let’s do some deep abdominal breathing while focusing on the body sensations.  
    
    Breath in through your nose, breathe out through your mouth. 
    
    And softly say to yourself "It's okay for me to feel this.  I can handle this" as you breathe deeply in and out.
    
    Try it now, I’ll wait for you here. 
        + Done
        - 
        Great! Before we finish, identify if the intensity of the emotion you were feeling has changed.  
                + 1
                + 2
                + 3 
                + 4
                + 5 
                + 6
                + 7 
                + 8 
                + 9 
                + 10
                - 
                Emotions move like a wave. It reaches its maximum like the top of a wave and then if you didn’t resist it, it will subside. It may be hard to get to sometimes, but then it comes and there’s relief at the end.
                
                Did the emotions you were feeling today lower their intensity?
                - 
                + Yes 
                    Nice job. You are learning to manage what you are feeling and also building your vocabulary of emotion and illuminating your emotional world. 
                    -> Closing_Message_Path_A
                + Same  
                    This can happen when we are learning to use this tool.  
                    
                    The good news is the more we practice the easier it gets, and the more we can understand that emotions are like waves, and follow them back into calmness.
                    -> Closing_Message_Path_A
                
                + It intensified
                    -> Intensified_Emotions_Path_A


         -> END
         
         
=== Intensified_Emotions_Path_A ===
    This can happen when we are learning to use this tool.  
    Learning this kind of skill requires us to look at intense emotions more closely, and that can make us feel worse at first sometimes.  
    The good news is the more we practice the easier it gets, and the more we can understand that emotions are like waves, and follow them back into calmness. 
    
        Would you like to try the exercise again with this idea in mind?
        + Yes 
            -> Emotion_exercise
        + No
            Ok, I understand. Even if it didn’t feel so effective, with these exercises you are learning to manage what you are feeling and building your emotional awareness. 
            -> Closing_Message_Path_A
            
        
         
=== Closing_Message_Path_A ====

    Next time we meet we will understand what we are feeling in more detail and  practice these new tools some more. 
    
    With practice comes mastery! 
    
    Until then! 
    -> END


==== Second_session ====
//system checks if first session engagement were positive/neutral *or* negative

  + if positive or neutral
        -> SecondSessionPositive
  + if negative
        -> SecondSessionNegative


=== SecondSessionPositive ===

    Hey {username}, glad to see you again. Today we will work with identifying your emotions, but this time we will go deeper and tune in with more precision with what we are feeling. 

    Want to explore it?
    
    + Yes, let's give it a try.
        Great! Let's do it.
        ->Intro_Path_B
    
->END

=== SecondSessionNegative ===

    Hi {username}, I’m sorry it didn’t work for you last time. Sometimes it’s hard to name our emotions, we might be feeling too many at the same time or maybe like nothing at all. 
    
    Today I’ll provide some more explanations and help you identify with more precision what you’re feeling. This will help you gain more emotional awareness and the ability to choose your responses to different experiences. 
    
    Want to try it? 

    + Yes, let's give it a try.
        Great! Let's do it.
        ->Intro_Path_B
    + No, something else.
    - 
    + Would you like to talk to one of my pals instead?
    -
    + Yes, please
        ->FindNewBot

==== FindNewBot ====

    Sure, I will call a pal of mine. 
    
    Just remember, the more emotional awareness we can bring to our lives, the more we’ll understand what we need and want, the better we will get at resolving conflicts and the easier it will be to move past difficult feelings. 
    
    Come back and visit me some other time, we can practice emotional awareness techniques together.
    
        Do you have any feedback so that I can improve?
        
    FEEDBACK __________
        
    [Find a new inky for user.]

-> END


==== Intro_Path_B ====

    “Last time we met you identified you were feeling: {first_session_emotion}”
    
    Do you want to work on that same emotion or do you have a different one today?”

    + Same emotion as last time. 
        // (Here, we should skip asking the user for their emotion and automatically choose {first_session_emotion})
        // In this demo, since first_session_emotion is "Joy", we go directly to Choose_joy_intensity
        -> Choose_joy_intensity
    + New emotion

        -> Choose_emotion
-> END

==== Choose_emotion ====
    Choose your core emotion from this menu: 
        + Disgust
            -> Choose_disgust_intensity
        + Sadness
            -> Choose_sadness_intensity
        + Fear
            -> Choose_fear_intensity
        + Anger
            -> Choose_anger_intensity
        + Joy
            -> Choose_joy_intensity
        
        
=== Choose_disgust_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    From least intense to more intense: 
        + Dislike
        + Aversion
        + Distaste
        + Repugnance
        + Revulsion
        + Abhorrence
        + Loathing 
        - 
        -> Emotion_exercise
        


=== Choose_sadness_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    From least intense to more intense:
        + Disappointment
        + Discouragement
        + Distraughtness
        + Resignation
        + Helplessness
        + Misery
        + Despair
        + Grief
        + Sorrow
        + Anguish
        - 
        -> Emotion_exercise



=== Choose_fear_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    From least intense to more intense:
        + Trepidation
        + Nervousness
        + Anxiety
        + Dread
        + Desperation
        + Panic
        + Horror
        + Terror 
        - 
        -> Emotion_exercise



=== Choose_anger_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    
    From least intense to more intense:
        + Annoyance
        + Frustration
        + Exasperation
        + Argumentativness
        + Bitterness
        + Vengefulness
        + Fury
        - 
        -> Emotion_exercise

=== Choose_joy_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling.
    From least intense to more intense:
        + Sensory Pleasure
        + Rejoicing
        + Compassion
        + Amusement
        + Relief
        + Peace
        + Pride 
        + Wonder 
        + Excitement
        + Ecstasy
        - 
        -> Emotion_exercise



==== Third_session ====
//system checks if session engagement were positive/neutral *or* negative
  + if positive or neutral
        ->ThirdSessionPositive
  + if negative
        -> ThirdSessionNegative


=== ThirdSessionPositive ===
    Hello hello! Having you back makes me feel so much joy. 
    
    Now that you’ve gained more emotional awareness we can work on a next step and understand what triggered those feelings. 
    
    This will help you create more consciousness so you can choose how to respond.
    
    Want to explore it?

    + Yes, let's do it.
        Wonderful, let's start.
        -> Intro_Path_C
    


=== ThirdSessionNegative ===

    Hi {username}, thanks for coming back. I know we haven’t done great the last couple of times. But I want to introduce you to something a little bit different today. 
    
    The focus will be on understanding what triggers your emotions and creating consciousness so you can choose how to respond. 
    
    Want to give it a try?
    
    + Yeah, why not
        Great! Let's do it.
        ->Intro_Path_C
    + No, something else.
        
        Would you like to talk to one of my pals instead?
        -
        + Yes, please
            ->FindNewBot



=== Intro_Path_C ===
    The first thing to know is that our emotions unfold on a timeline. 
    
    The timeline begins with an event that initiates an emotional experience and ultimately results in a response.
    
    But the event does not occur by itself, it occurs in a context.
    
    + What context? 
        -> Path_C_context
    
    + Tell me more
        -> Path_C_context

-> END

=== Path_C_context ===
    The context includes: 
    Preconditions: the current circumstances in your life and the feelings you had before. 
    
    Our worldview, which is influenced by our prior experiences, personal history and inherited universal scripts about life. 
    
    These color our perception of a situation. So, the emotional experience we have includes subjective feelings and interpretations. 
    
    + Let's work with it.
        -> Path_C_Intro
        

=== Path_C_Intro ===
    
Do you want to work on the emotion you picked last time: {second_session_emotion}

Or do you want to identify what you are feeling today?
    + Use emotion from last time 
    // Here we automatically choose which emotion the user has to pick the intensity based on the previous session. In this demo, we redirect user to Choose_anger_intensity since the {second_session_emotion} was anger
        -> PathC_choose_anger_intensity
    + Identify emotion today
        -> PathC_choose_emotion


==== PathC_choose_emotion ====
    Choose your core emotion from this menu: 
        + Disgust
            -> PathC_choose_disgust_intensity
        + Sadness
            -> PathC_choose_sadness_intensity
        + Fear
            -> PathC_choose_fear_intensity
        + Anger
            -> PathC_choose_anger_intensity
        + Joy
            -> PathC_choose_joy_intensity
        
        
=== PathC_choose_disgust_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    From least intense to more intense: 
        + Dislike
        + Aversion
        + Distaste
        + Repugnance
        + Revulsion
        + Abhorrence
        + Loathing 
        - 
        -> Continue_PathC
        


=== PathC_choose_sadness_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    From least intense to more intense:
        + Disappointment
        + Discouragement
        + Distraughtness
        + Resignation
        + Helplessness
        + Misery
        + Despair
        + Grief
        + Sorrow
        + Anguish
        - 
        -> Continue_PathC



=== PathC_choose_fear_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    From least intense to more intense:
        + Trepidation
        + Nervousness
        + Anxiety
        + Dread
        + Desperation
        + Panic
        + Horror
        + Terror 
        - 
        -> Continue_PathC



=== PathC_choose_anger_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling. 
    
    From least intense to more intense:
        + Annoyance
        + Frustration
        + Exasperation
        + Argumentativness
        + Bitterness
        + Vengefulness
        + Fury
        - 
        -> Continue_PathC

=== PathC_choose_joy_intensity
    Let’s zoom in some more and identify within that core emotion what are you feeling.
    From least intense to more intense:
        + Sensory Pleasure
        + Rejoicing
        + Compassion
        + Amusement
        + Relief
        + Peace
        + Pride 
        + Wonder 
        + Excitement
        + Ecstasy
        - 
        -> Continue_PathC
        
        
=== Continue_PathC ===
    Ok, great that you identified it. That is a very important part of the process.

    Now, can you identify how intensely you are feeling it on a scale from 1 to 10? 
        - 
        + 1
        + 2
        + 3 
        + 4
        + 5 
        + 6
        + 7 
        + 8 
        + 9 
        + 10
        - 
        
        -> Triggers_Exercise
        

=== Triggers_Exercise ===
    
    Now that you know your emotion and its intensity, let's first identify the event that triggered it:

        + Insert text 

Next let’s analyze what we can gather from the context in which it was triggered. 

Which were your preconditions? What were you doing? What were you feeling like before these emotions got triggered? 

	- + Insert tex


Have you had prior experiences with events like this? How do you tend to behave when events like this happen? 

	- + Insert text. 


    Identifying this timeline allows us to understand its not the event itself what is triggering our emotions. Its more our interpretation of the event based on our precondition and worldview. 

This opens up the possibility to new ways of understanding or framing the event that happened and the emotions that get triggered. 

    
           - + Sounds good
    
    Although sometimes it's hard to feel in control of our responses, we have a choice in how we respond. Some responses are more constructive than others.
    
    Think about different ways you can respond to this event? 
    
        - + User input

With awareness we can pause before we respond and choose a response that best serves our goals.

    -> End_Path_C

=== End_Path_C

I hope you found this exercise helpful and that it opens new possibilities and opportunities. 

Was it useful? 

+ Yes, it was useful
    Remember, when an emotion is triggered we are in the grip of that emotion, which limits our ability to think clearly and choose how we respond.
    
    With these tools you have learned you can gain clarity and the ability to make a thoughtful choice on how to respond. 
    -> END

+ Not so much
- 
    I’m sorry to hear that. Could you please provide some feedback for my human friends to read and help me improve? 
    + User provides feedback
    -> END
    












