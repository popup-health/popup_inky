// ---- Let Go ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/85467
# title: Let Go
# author: Federica Vegas
// -----------------------------


VAR userName = "Pablo"
VAR stressor = "I have to edit a lot"
VAR stressCategory = "work"

-> System_Check


==== System_Check ====

  + If first visit
        -> First_visit 
  + If second visit
        -> Second_visit
  + If third visit
        -> Third_visit

==== First_visit ====
~ stressor = "I need to edit too many scripts"
Hi {userName}. I’m Let Go. I can help people worry less about the past or the future and learn to live more in the present moment. 
        + Cool.
        + Sounds interesting.
- It all starts by learning how to let go of repetitive thoughts through a gentle, nurturing lens, and returning to the present moment. 
I can show you how to do it. 
Do you want to use this technique to reduce your repetitive thoughts about: "{stressor}"?  // engineering - this line only appears if the stressor is available. If not just ask "Do you want to try it out?"
  + Yeah! 
  + Alright, why not!
  - Okay, let’s do it. We will start today with a mindfulness technique that teaches you how to identify and name your thoughts so you can let them go.
      + Let's try it out. 
            -> leaves 
      + Want to know more.
        The mindfulness technique of naming thoughts helps us recognize when the mind has wandered. You learn to observe your thoughts and name them.
        You don't need to catch every single thought and feeling. Only note them when you realize you've been lost in thought. 
         - + Sounds useful.
        The good thing is that you'll get a sense of having dealt with them, making it easier to let go and gently return to your breath or to this moment. 
        Remember, it's a very gentle acknowledgment, you're not fighting or resisting thoughts, just naming and noticing them.
        Do you want to try it out? 
          - + Yes, I'm ready.
                -> leaves   


    = leaves
    Sit comfortably and start by taking 3 big deep breaths. In through the nose, out through the mouth. 
    As you breathe in, notice how your body expands; as you breathe out, note how your body softens.   // engineering - can we add an image of the bot breathing? Or a visual cue of breatinhg in and out. 
      + Done.
        - Now we'll practice naming our thoughts. 
          When thoughts come simply name them: “thinking”, “feeling”, “planning”.... And imagine they are like leaves floating by on a river 🍃🏞.  
            + Let's name them. 
                - OK. Please read these steps first and then you can begin. 
                Take a few deep breaths and notice the sensation of the breath in your body. 
                  Gently place your hand in your stomach. Follow that rising and falling sensation. 
                  When a thought comes, name it, watch it as it passes by like leaves swirling on a river 🍃, and then return to your breathing. 
                  Ready to practice with 4 to 6 breaths? 
                  + Yes!
                  + Excited to try it!
                  - Great, go ahead and practice. I'll wait for you here. 
            
                    + Done
                    + Thoughts overwhelmed me.
                       -> overwhelmingthoughts  
                    - Great practice! 
                    Remeber you can use this naming technique anytime you feel burdened by repetitive thoughts about the past or future. With practice you'll strengthen your mindfulness muscles 💪🧠. 
                      Next time we meet I'll show you another technique for letting thoughts go. 
                        + Thanks!
                            -> END
    
 
 =overwhelmingthoughts
Sometimes these naming techniques can feel overwhelming. Specially when strong negative thoughts come. 

When this happens you can redirect your attention to external sensations. 

You can also practice the exercise with your eyes open rather than closed.  

Or you can say to yourself “I am safe where I am right now.”  Saying words like this will remind your brain that it is okay to relax and watch thoughts as they go. 

And remember, as we continue to practice, we learn to witness our thoughts without getting caught up in them, allowing us to feel more centered and grounded.

+ Thanks.

Hope to see you again soon.

    -> END
//**********************************************//    
//**********************************************//    
    


==== Second_visit ====

  + If positive or neutral.
    Hey {userName}, great to see you again. Let’s practice together a variation of the floating leaves technique we did last time. 
    It will help you tune into the present moment and stop rehashing the past or worrying about the future.
  + If negative.
    Hi {userName}, I'm sorry it didn't work so well last time. Thoughts about the past or worries about the future can constantly come flying into our minds. Trying to only focus on the present moment can be hard, but it can really help reduce stress. 
    Let’s try a technique that can make it easier. 
    One key component is not to fight with what appears in our minds, and instead focus on gently letting go.
    - Want to try it?
      + Yes, let’s try it.
        OK! Let’s do it. 
                -> Feather 
    + No, something else.
    Would you like to talk to one of my pals instead?
     - + Yes, please.
        -> Send_to_other_bot 

==== Feather ====
Read this explanation first and then begin. 
Take deep breaths and bring your attention to the motion of your breath as it enters your nostrils and leaves your mouth 🌬. 
When thoughts come just note them and imagine you are touching them with a gentle feather 🪶 
 + Some examples...
Name the thought: “Thinking”, touch it gently with your imaginary feather 🪶 and watch it leave. 
Name the thought: “Planning” touch it gently with your imaginary feather 🪶 and observe it disappear. 
Remember, it is a gentle touch. There's no fighting or engaging with the thoughts. Just let them go with each touch of the feather. 
 - 
 + Let's practice
Ok, practice this for 4 to 6 deep breaths. I'll wait for you here. // engineering - can we add an image of the bot breathing? Or a visual queu of breathing in and out for 4 to 6 long breathes?
  - + Done
 //engineering: I'm trying to add here another menu option that goes with done, saying +"Thoughts overwhelmed me" that could lead to -> overwhelmingthoughts. It's not allowing me do it. If you could please add it. 
    - Wonderful! The great thing about these mindfulness exercises is that the more time we spend sitting with our minds, the more at ease we feel within ourselves. 
    Would you like me to help you set a reminder for daily practice? 
    - + Yes
    Great, will set it up now. 
      //engineering: can we add here an option to set a daily reminder in their calendars called "Let Go exercise" descripction of: taking deep breaths, naming thoughts, touching them with a feather and letting them go as leaves in a river". 
    + No, thanks.
      Hope to see you again soon.&nbsp;
        - + Thanks!
            -> END

//**********************************************//    
//**********************************************//    
    

==== Third_visit ====

  + If negative
        -> Visit_3_prev_negative 
  + If positive or neutral. 
    Hello hello! I’m working now on my two favorite techniques for letting ruminating thoughts go and returning to the present moment. 
    Want to join me? We can work on them together.&nbsp;
      - + Yes, let’s do it. 
            -> two_techniques 
            
    = Visit_3_prev_negative
    Hi {userName}, it’s great to have you here today. You know how they say “the third time's the charm”...
    Let’s give it a try together, and this time I will add some tips that can help with letting go of sticky thoughts.&nbsp;
      + Yes, let's try it.
            -> explanation_and_tips 
              + No, something else.
    Would you like to talk to one of my pals instead?
     - + Yes, please.
        -> Send_to_other_bot 
    
    
    = explanation_and_tips
    Naming and noting our thoughts can feel hard at times. Thoughts come so fast and at such a fast pace! 
    But practicing these techniques helps you teach your mind how to let go of repetitive thoughts and master being in the present moment.
    
    Want some tips that can help you? Or go right to the exercise?
     + Tips please. 
     + The exercise.
      -> two_techniques 
      
    - The focus of this exercise is to recognize when the mind has wandered. You don't need to catch every single thought, that can become tiring. Only note it when you realize you have been lost in thought. 
    It’s normal to have the same thoughts return again and again, simply apply the same approach, gently naming them. 
    Noting thoughts can create a sense of having dealt with them. This makes it easier to let go of the repetitive thoughts and gently return to the moment.
    Want to try my naming techniques now with these tips in mind? 
      + Yes, let's try.
            -> two_techniques 
      +  Thanks, but no. 
            -> Send_to_other_bot 

    = two_techniques
    Wonderful, let’s start. 
    My two techniques for naming thoughts and letting them go are: 
    leaves in a river 🍃, and
    touching with a feather 🪶 
    Which technique do you want to work with today?&nbsp;
      + Leaves 
            -> First_visit.leaves
      + Feathers
            -> Feather 

==== Send_to_other_bot ====
Sure, I will call a pal of mine. 
Just remember, the more awareness we can bring to our day, the greater calm, clarity, and contentment we’ll feel. 
Come back and visit me some other time, we can practice mindfulness techniques together.
//Send to other bot. 
    -> END
