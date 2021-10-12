// ---- Mindful (def.) ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/85467
# title: Mindful (def.)
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
~ stressor = "I need to edit too many bots"
Hi {userName}. I’m the Mindful bot. I have the superpower of maintaining a moment-by-moment awareness, I don’t worry about the past or the future, I only live in the now. 
It all starts by learning how to let go of repetitive thoughts through a gentle, nurturing lens, and focusing on the present moment. 
I can show you how to do it. The more awareness we can bring to our day, the greater calm, clarity, and contentment we’ll feel. 
Do you want to use this technique to reduce your stress about: "{stressor}"  // engineering - this line only appears if the stressor is available
Wanna try? 
  + Yeah! 
  + Alright, why not!
  - Okay, let’s do it. We will start today with a naming technique. 
      + Let's try it out. 
            -> leaves 
      + Explain to me what it is.
        Naming thoughts is recognizing when the mind has wandered. You do not need to catch every single thought and feeling, that can become tiring. Only note it when you realize you have been lost in thought. 
        Having noted thoughts there is a sense of having dealt with them. This makes it easier to let go of the distraction and gently return to your breath or to this moment. 
        Remember, it's a very gentle acknowledgment, not fighting or resisting, just naming and noticing. 
        Do you want to try it out? 
          - + Yes, I'm ready.
                -> leaves   


    = leaves
    Sit comfortably and start by taking 3 big deep breaths. In through the nose, out through the mouth. 
    As you breathe in, notice how the body expands; as you breathe out, watch the body soften. 
      + Done.
        - Now let's practice naming our thoughts.
          When thoughts come simply name them: “thinking”, “feeling”, “planning”.... And imagine as if they were leaves passing by in a river. 
            + Let's name them. 
                - Take 6 deep breaths and notice the sensation of the breath on your body. 
                  Gently place your hand in your stomach. Follow that rising and falling sensation. 
                  When a thought comes, name it, watch it as it goes like leaves in a river, and then return to your breath. 
                    + Done
                    - Great practice! You can use this naming technique anytime you feel repeating thoughts about the past or future keep on coming. 
                      Next time we meet I will show you another technique for letting thoughts go. 
                        + Thanks!
                            -> END
    

//**********************************************//    
//**********************************************//    
    
    
==== Second_visit ====
~ stressor = "I had a fight with my boss"
  + If positive or neutral.
    Hey {userName}, great to see you. Let’s practice together another technique for tuning into the present moment and stop rehearsing the past or worrying about the future.
  + If negative.
    Hi {userName}, thoughts about the past or worries about the future constantly come flying into our minds. Trying to only focus on the present moment can be hard sometimes. 
    Let’s try a technique that makes it much easier. One key component is not to fight with what appears in our minds, and instead focus on gently letting go. 
    - Want to try it to deal with: "{stressor}"?&nbsp;
      + Yes, let’s give it a try.
        OK! Let’s do it. 
                -> Feather 

==== Feather ====
Begin by sitting comfortably. 
Take deep breaths and bring your attention to the motion of your breath as it enters and leaves your nostrils. 
Note the full passage of each in-breath and out-breath from beginning to end. 
When thoughts come, do not fight or engage with them, just note them and imagine you are touching them with a gentle feather. 
“Thinking”, touch it gently with your imaginary feather and watch it leave. 
“Planning” touch it gently with your imaginary feather and observe it disappear. 
Remember, it is a gentle touch, no fighting or engaging, just letting them go. 
Practice this for 6 deep breaths.&nbsp;
  + Done
    - Wonderful! The great thing about these exercises is that the more time we spend sitting with our minds, the more at ease we feel within ourselves. 
      Hope to see you again soon.&nbsp;
        + Thanks!
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
    Hi {userName}, it’s great to have you here today. You know how they say “the third time's the charm”.... 
    Let’s give it a try together, and this time I will add some tips that can help with letting go of sticky thoughts.&nbsp;
      + Yes, the third time's the charm...
            -> explanation_and_tips 
      + No, send me to another bot.
            -> Send_to_other_bot 

    = explanation_and_tips
    Naming and noting our thoughts can feel hard at times. Thoughts come so fast and at such a fast pace! 
    But as we practice these techniques we teach our minds how to let go of repetitive thoughts and actually be in the present moment. 
    The more awareness we can bring to our day, the greater calm, clarity, and contentment we’ll feel. 
    Here are some tips that can help you:
    We just want to recognize when the mind has wandered. You do not need to catch every single thought and feeling, that can become tiring. Only note it when you realize you have been lost in thought. 
    It’s normal to have the same thoughts return again and again, simply apply the same approach, gently noting the nature of the distraction. 
    Having noted thoughts there is a sense of having dealt with them. This makes it easier to let go of the distraction and gently return to your breath or to this moment. 
    Want to try how my naming techniques work now with these tips in mind? 
      + Yeah, let's give it a try
            -> two_techniques 
      +  Thank you, but no. 
            -> Send_to_other_bot 

    = two_techniques
    Wonderful, let’s start. 
    My two techniques for naming thoughts and letting them go are: leaves in a river and touching with a feather. 
    Which technique do you want to work with today?&nbsp;
      + Leaves in a river
            -> First_visit.leaves
      + Touching with a feather
            -> Feather 

==== Send_to_other_bot ====
//PP: I took the liberty to add this here, as we are using this way to switch to another bot, with a simple reminder that this technique may be doable and useful later
Sure, I will call a colleague. 
Just remember, you can be mindful even by paying close attention to small things in daily life, such as eating or walking.
//Send to other bot. 
    -> END
