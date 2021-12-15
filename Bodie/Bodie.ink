
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
    Let's practice with some muscle relaxation 
    There are (X) numbers of areas we can practice on. You don't have to do them all now.
    For each area, I'll begin by telling you the instructions, then prompt you to try it yourself.  It's fun, really! 
    
    + ready
        -> Muscle_relaxation_exercise

==== Muscle_relaxation_exercise ====
    // Select muscle-action pair from table
    // Check lucidchart for table

    Ok, now let's get in a comfortable position. Let's begin with your (muscle group). Remember, read my instructions before you try it.
    
    Breathe in, and (action), firmly but not to the point of pain or cramping. Hod it for 4 to 10 seconds, and then, as you breathe out, instantly and completely relax the muscle group. That's more effective than releasing slowly.
    
    Go ahead and try it out. Please tell me when you are done or if you want to work with another muscle group, or if you want to do this one again!
    
    + Done  
    -> End_muscle_relaxation_exercise_first_session
    + Again  
    -> Muscle_relaxation_exercise
    + Another
    -> Muscle_relaxation_exercise
    


==== End_muscle_relaxation_exercise_first_session ====
 Let's be still for about a minute, keeping our muscles relaxed. I'll let you know when a minute has passed. 
 
 // Animation of bot sitting calmly for 1 min

    All right! Done. You can always use muscle relaxation to reduce some tension or stress accumulated throughout the day.

[Exit to farewell module]
    
-> END
    
==== End_muscle_relaxation_exercise_second_session ====
 Let's be still for about a minute, keeping our muscles relaxed. I'll let you know when a minute has passed.
 
 // Animation of bot sitting calmly for 1 min
 
All right! Done. You can always use muscle relaxation to reduce some tension or stress accumulated throughout the day.
Next time we get together I'll have a fun new technique to try called body scanning

[Exit to farewell module]

-> END

==== Second_session ====
    + Past session positive or neutral
        -> Second_session_positive
    + Past session negative
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
        -> Intro_muscle_relaxation_exercise
    + I know what to do
        Sounds good
        
        Pick as many muscle areas as you want and don't forget to tighten the area, count to 10, and let go all at once.
        Let me know when you are done.
        
        - + Done
        
        -> Muscle_relaxation_exercise


==== Second_session_negative ====
[sad GIF]
Let's see if we can do better this time.
Do you want to try again, or talk to one of my pals instead?

    + Try again
        -> Intro_muscle_relaxation_exercise
    
    + Talk to someone else
        -> Find_new_bot

==== Find_new_bot ====
Ok, let's find someone else you can talk to.
-> END

==== Third_session ====
    + Past engagement positive
        -> 
    
    + Past engagement negative
->END


==== Fourth_session ====
->END