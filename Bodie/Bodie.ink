
// Lock Status
// unlocked
//

// ---- Bodie ----
# title: Bodie
# author: Pablo Paredes
# Technique: Mindful Muscle Relaxation
// -----------------------------



VAR username = "Pablo"
VAR visit = "first"

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
    Howdy {username}, my name is Buddy Bot. 
    I can help you be more aware of your body and mind to help relieve tension.
    
    -> Intro_muscle_relaxation_exercise

->END

==== Intro_muscle_relaxation_exercise ====
    Let's practice with some muscle relaxation.
    There are (X) numbers of areas we can practice on. You don't have to do them all now.
    For each area, I'll begin by telling you the instructions, then prompt you to try it yourself.  It's fun, really! 
    
    + ready
        -> Muscle_relaxation_exercise

==== Muscle_relaxation_exercise ====
    // Select muscle-action pair from table
    // Check lucidchart for table

    Ok, (first/now) let's get in a comfortable position. Let's (begin/continue) with your (muscle group). Remember, read my instructions before you try it.
    
    Breathe in, and (action), firmly but not to the point of pain or cramping. Hod it for 4 to 10 seconds, and then, as you breathe out, instantly and completely relax the muscle group. That's more effective than releasing slowly.
    
    Go ahead and try it out. Please tell me when you are done or if you want to work with another muscle group, or if you want to do this one again!
    
    + Done  
    -> End_muscle_relaxation_exercise_first_session
    + Again  
        (Same muscle selected)
    -> Muscle_relaxation_exercise
    + Another
        (New muscle assigned)
    -> Muscle_relaxation_exercise
    


==== End_muscle_relaxation_exercise_first_session ====
 Let's be still for about a minute, keeping our muscles relaxed. I'll let you know when a minute has passed. 
 
 // Animation of bot sitting calmly for 1 min

    All right! Done. You can always use muscle relaxation to reduce some tension or stress accumulated throughout the day.

[Exit to farewell module]
    
-> END
    




==== Second_session ====
    + Past engagement was positive or neutral
        -> Second_session_positive
    + Past engagement negative
        -> Second_session_negative
->END



==== Second_session_positive ====

[happy GIF]

I am glad you're back!
Let's use our bodies to get rid of stress!
 -> Path_B

==== Path_B ====
Do you want me to guide you through the exercise?

    + Yes, guide more
        Of course!
        -> Intro_muscle_relaxation_exercise_second_session
    + I know what to do
        Sounds good
        
        Pick as many muscle areas as you want and don't forget to tighten the area, count to 10, and let go all at once.
        Let me know when you are done.
        
        - + Done
        
        -> End_muscle_relaxation_exercise_second_session


==== Second_session_negative ====
[sad GIF]
Let's see if we can do better this time.
Do you want to try again, or talk to one of my pals instead?

    + Try again
        -> Intro_muscle_relaxation_exercise_second_session
    
    + Talk to someone else
        -> Find_new_bot
        
==== Intro_muscle_relaxation_exercise_second_session ====
    Let's practice with some muscle relaxation.
    There are (X) numbers of areas we can practice on. You don't have to do them all now.
    For each area, I'll begin by telling you the instructions, then prompt you to try it yourself.  It's fun, really! 
    
    + ready
        -> Muscle_relaxation_exercise_second_session

==== Muscle_relaxation_exercise_second_session ====
    // Select muscle-action pair from table
    // Check lucidchart for table

    Ok, (first/now) let's get in a comfortable position. Let's (begin/continue) with your (muscle group). Remember, read my instructions before you try it.
    
    Breathe in, and (action), firmly but not to the point of pain or cramping. Hod it for 4 to 10 seconds, and then, as you breathe out, instantly and completely relax the muscle group. That's more effective than releasing slowly.
    
    Go ahead and try it out. Please tell me when you are done or if you want to work with another muscle group, or if you want to do this one again!
    
    + Done  
    -> End_muscle_relaxation_exercise_second_session
    + Again  
        (Same muscle selected)
    -> Muscle_relaxation_exercise_second_session
    + Another
        (New muscle assigned)
    -> Muscle_relaxation_exercise_second_session
    
        


==== End_muscle_relaxation_exercise_second_session ====
 Let's be still for about a minute, keeping our muscles relaxed. I'll let you know when a minute has passed.
 
 // Animation of bot sitting calmly for 1 min
 
All right! Done. You can always use muscle relaxation to reduce some tension or stress accumulated throughout the day.
Next time we get together I'll have a fun new technique to try called body scanning

[Exit to farewell module]

-> END






==== Find_new_bot ====
Ok, let's find someone else you can talk to.
[Find new bot]
-> END

==== Third_session ====
    + Past engagement was positive or neutral
        -> Third_session_positive
    + Past engagement negative
        -> Third_session_negative
-> END


==== Third_session_positive ====

[happy GIF]

You are getting good at using your muscles to relax! Let's keep learning more.
 -> Path_C
 
 ==== Third_session_negative ====
[sad GIF]
Sorry last time was not the best.
Let's try something new this time which may help.

    + Try something new
        -> Path_C
    
    + Talk to someone else
        -> Find_new_bot
        
==== Path_C ==== 
I will now teach a body scanning technique to help you become aware of the sensations in your body.
// Coin toss for either had or toes
To start, sit back. Start with your [toes, head], move your attention [up, down] your body slowly.
Are you tense anywhere?
    + Yes
    OK, try to pay close attention to any kind of muscle tension you're feeling.  Really focus on it, even if it seems to make it more tense for a moment.
    -> Continue_Path_C
    + No
    Okay. Now bring your stressor to mind. Did you notice a change in the way your body feels? Focus your attention on the area of your body where you feel tension now.
    -> Continue_Path_C

==== Continue_Path_C ====
What words would you use to describe this tension?

    + User input
    
    Recognizing your tension is the first step in reducing your tension. Now that you are more aware of the tension, try to pinpoint which muscles in particular are tense. Take a few seconds to breathe deeply. 
    
    //Follow me!
    
    //[Animation of bot breathing in and out]
    
    Did you notice a reduction of tension on those muscles?
    - 
    + Yes
    If you ever feel this tension return, take a few seconds to breathe deeply! Most people don't know all muscular tension is self-produced! 
        -> End_path_C
    + No
    Take 10 more seconds to breathe deeply! If you ever feel this tension return, take a few seconds to breathe deeply! Most people don't know that all muscular tension is self-produced! Let me know when you are done.
        -
        + Done
            -> End_path_C

==== End_path_C ====

That is it! As you go throughout your day, be aware of any situation causing you tension.

-> END


==== Fourth_session ====
    + Past engagement was positive or neutral
        -> Fourth_session_positive
    + Past engagement negative
        -> Fourth_session_negative
-> END


==== Fourth_session_positive ====

[happy GIF]

Hurray for muscles! They are becoming our allies! Let's keep practicing!

 -> Choose_technique
 
 ==== Fourth_session_negative ====
 
[sad GIF]

It may seem as if this technique is not the best, but I am sure that some more practice will help.

-> Choose_technique


==== Choose_technique ====

Which technique do you want to try?

    + Tensing muscle
        -> Path_B_fourth_session
    
    + Body scan
        -> reminder_fourth_session
        
    + You pick
        [random coin picks one of the two options above]
        -> END

==== reminder_fourth_session ====

Do you want me to remind you how to do it?

+ Yes, remind me  
    -> Path_C_fourth_session
+ I know what to do 
    Sounds good
    -> Body_scan_no_reminder
    
==== Body_scan_no_reminder ====
Taking the time to be mindful of how the muscles in your body feel, whether tense or relaxed, is a fantastic way to reduce tension overall.  Try to breathe deliberately into each area as you explore it.  Let me know when you're done.

    + Done
        Nicely done! 
        The more you practice, the more aware you will become of how your body feels.
        
        [Send to Farewell module]
        
        -> END



==== Path_B_fourth_session ====
Do you want me to guide you through the exercise?

    + Yes, guide more
        Of course!
        -> Intro_muscle_relaxation_exercise_fourth_session
    + I know what to do
        Sounds good
        
        Pick as many muscle areas as you want and don't forget to tighten the area, count to 10, and let go all at once.
        Let me know when you are done.
        
        - + Done
        
        -> End_muscle_relaxation_exercise_fourth_session


==== Intro_muscle_relaxation_exercise_fourth_session ====
    Let's practice with some muscle relaxation.
    There are (X) numbers of areas we can practice on. You don't have to do them all now.
    For each area, I'll begin by telling you the instructions, then prompt you to try it yourself.  It's fun, really! 
    
    + ready
        -> Muscle_relaxation_exercise_fourth_session

==== Muscle_relaxation_exercise_fourth_session ====
    // Select muscle-action pair from table
    // Check lucidchart for table

    Ok, (first/now) let's get in a comfortable position. Let's (begin/continue) with your (muscle group). Remember, read my instructions before you try it.
    
    Breathe in, and (action), firmly but not to the point of pain or cramping. Hod it for 4 to 10 seconds, and then, as you breathe out, instantly and completely relax the muscle group. That's more effective than releasing slowly.
    
    Go ahead and try it out. Please tell me when you are done or if you want to work with another muscle group, or if you want to do this one again!
    
    + Done  
    -> End_muscle_relaxation_exercise_fourth_session
    + Again  
        (Same muscle selected)
    -> Muscle_relaxation_exercise_fourth_session
    + Another
        (New muscle assigned)
    -> Muscle_relaxation_exercise_fourth_session
    
        


==== End_muscle_relaxation_exercise_fourth_session ====
 Let's be still for about a minute, keeping our muscles relaxed. I'll let you know when a minute has passed.
 
 // Animation of bot sitting calmly for 1 min
 
All right! Done. You can always use muscle relaxation to reduce some tension or stress accumulated throughout the day.
Next time we get together I'll have a fun new technique to try called body scanning

[Exit to farewell module]

-> END


==== Path_C_fourth_session ==== 
I will now teach a body scanning technique to help you become aware of the sensations in your body.
// Coin toss for either had or toes
To start, sit back. Start with your [toes, head], move your attention [up, down] your body slowly.
Are you tense anywhere?
    + Yes
    OK, try to pay close attention to any kind of muscle tension you're feeling.  Really focus on it, even if it seems to make it more tense for a moment.
    -> Continue_Path_C_fourth_session
    + No
    Okay. Now bring your stressor to mind. Did you notice a change in the way your body feels? Focus your attention on the area of your body where you feel tension now.
    -> Continue_Path_C_fourth_session

==== Continue_Path_C_fourth_session ====
What words would you use to describe this tension?

    + User input
    
    Recognizing your tension is the first step in reducing your tension. Now you are more aware of the tension, try to pinpoint which muscles in particular are tense. Take a few seconds to breathe deeply. Follow me!
    
    [Animation of bot breathing in and out]
    
    Did you notice a reduction of tension on those muscles?
    - 
    + Yes
    If you ever feel this tension return, take a few seconds to breathe deeply! Most people don't know all muscular tension is self-produced! 
        -> End_path_C_fourth_session
    + No
    Take 10 more seconds to breathe deeply! If you ever feel this tension return, take a few seconds to breathe deeply! Most people don't know that all muscular tension is self-produced! Let me know when you are done.
        -
        + Done
            -> End_path_C_fourth_session

==== End_path_C_fourth_session ====

That is it! As you go throughout your day, be aware of any situation causing you tension.

-> END












































