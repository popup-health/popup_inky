//LOCKED by FV 10/13 3:20pm
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
Hi {userName}. I’m Let Go. I have the superpower of maintaining a moment-by-moment awareness and not worry about the past or the future. //RG: I would not talk about the characters having powers (especially with emotional elements like worry) but rather the ability to help people develop such powers.  So:  "I can help people develop the ability to be more in the moment and worry less about the past or future."
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
        //RG: This feels too long.
        The mindfulness technique of naming thoughts helps us recognize when the mind has wandered. You learn to observe your thoughts and name them.
        You don't need to catch every single thought and feeling. Only note them when you realize you've been lost in thought. //RG: maybe break it here with a single user choice like, "What does this do?"
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
                    - Great practice! 
                    Remeber you can use this naming technique anytime you feel burdened by repetitive thoughts about the past or future. With practice you'll strengthen your mindfulness muscles 💪🧠. 
                      Next time we meet I'll show you another technique for letting thoughts go. 
                        + Thanks!
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
    + No, send me to another bot.
    //RG:  first, we need to eliminate all "bot" references.  second, I can't figure out how to get a 20 character menu choice here that doesn't use bot.  Unless you can, perhaps a menu choice that says "Something else" and let's the Let Go ask "Would you like to talk to one of my pals instead?" and only give a "Yes" menu choice, might be the way to go.
        -> Send_to_other_bot 

==== Feather ====
Read this explanation first and then begin. 
Take deep breaths and bring your attention to the motion of your breath as it enters and leaves your nostrils 🌬. 
//RG: earlier you say that exhales should be through the mouth.  is this one suggesting only nose breathing?  If not, you'll need to resolve the inconsistency of "leaves through your nostrils".
//RG: this is also a very long section, so I recommend breaking it up with a few user acknowledgements.
Note the full passage of each in-breath and out-breath from beginning to end. 
When thoughts come just note them and imagine you are touching them with a gentle feather 🪶 
Name the thought: “Thinking”, touch it gently with your imaginary feather 🪶 and watch it leave. 
Name the thought: “Planning” touch it gently with your imaginary feather 🪶 and observe it disappear. 
Remember, it is a gentle touch. There's no fighting or engaging with the thoughts. Just let them go with each touch of the feather. 
Practice this for 4 to 6 deep breaths.&nbsp; // engineering - can we add an image of the bot breathing? Or a visual queu of breatinhg in and out for 6 long breathes?
  + Done
    - Wonderful! The great thing about these mindfulness exercises is that the more time we spend sitting with our minds, the more at ease we feel within ourselves. 
      Hope to see you again soon.&nbsp;
        + Thanks!
            -> END
//RG: I wonder if this exercise would benefit from offering the user the chance to set a recurring reminder for daily practice.  It might also be good to point out to the user that doing this at the same time each day is a good habit.

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
    Hi {userName}, it’s great to have you here today. You know how they say “the third time's the charm”?
    Let’s give it a try together, and this time I will add some tips that can help with letting go of sticky thoughts.&nbsp;
      + Yes, the third time's the charm...
      //over 20 chars? maybe just "Let's do it"
            -> explanation_and_tips 
      + No, send me to another bot.
      //RG:  same comments about this menu choice as earlier.
            -> Send_to_other_bot 

    = explanation_and_tips
    Naming and noting our thoughts can feel hard at times. Thoughts come so fast and at such a fast pace! 
    But practicing these techniques helps you teach your mind how to let go of repetitive thoughts and master being in the present moment.
    
    Want some tips that can help you? Or go right to the exercise?
     + Yes please. 
     + The exercise.
    //RG: the wording of "Yes please" and "Go ahead" makes it hard to distinguish between the two?  "Go ahead" should make it clear that it's going to the exercise.  I added the choice in the text, and then changed the menu wording to make it clearer.
    //RG: the explanation seems long, as before.  Try to break it up after the second paragraph.
    - The focus of this exercise is to recognize when the mind has wandered. You don't need to catch every single thought and feeling, that can become tiring. Only note it when you realize you have been lost in thought. 
    It’s normal to have the same thoughts return again and again, simply apply the same approach, gently noting the nature of the distraction. 
    Noting thoughts can create a sense of having dealt with them. This makes it easier to let go of the distraction and gently return to the moment, and this can reduce stress.
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
//PP: I took the liberty to add this here, as we are using this way to switch to another bot, with a simple reminder that this technique may be doable and useful later
Sure, I will call a pal of mine. 
Just remember, the more awareness we can bring to our day, the greater calm, clarity, and contentment we’ll feel. Come back and visit me some other time, we can practice mindfulness techniques together.
//Send to other bot. 
    -> END
