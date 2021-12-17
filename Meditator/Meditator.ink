

// Edits Summary
// DD 10/19/2021 Initial work

// Lock Status
// unlocked
//

// ---- Meditator ----
# title: Meditator
# author: A PopBot Intervention By David Denis
// Session 1 Loving kindness for self
// Session 2 for stranger
// Session 3 for difficult person
// -----------------------------



VAR username = "David"
VAR visit = "first"

-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        -> First_session
  + if second visit
        //-> Second_session
        ->END
  + if third or later visit
        //-> Third_session

-> END

==== First_session ====
Hi {username}, I’m Meditator. I teach a special kind of meditation called 'Loving Kindness'.  Some people hear that and think it's not for them because it sounds a bit corny but there's so much great evidence that this kind of practice helps boost mood, increase calm, and helps us to appreciate the small things in life.


    +Sounds good lets start!

        -> Session1LovingKindness
    

    +Show me evidence
        
        ->ShowEvidence
        
    

-> END

==== ShowEvidence ====

    Here is a good article outlining a summary of some of the research findings.  As you can see there is a lot of great benefits from this practice.
        
    https://www.psychologytoday.com/ca/blog/feeling-it/201409/18-science-backed-reasons-try-loving-kindness-meditation
        
    +Okay let's get started then!
        -> Session1LovingKindness
    +Not for me
        ->FindNewBot
        
->END

==== Session1LovingKindness ====

    This practice is quite simple in its form.  It's all about generating positive feelings towards ourselves and to others.
    
    For this first session were going to start with focusing on ourselves.  Many folks say that if you can't love yourself it is even harder to love others!  So a good place to start is generating some positivity towards ourselves.
    
    Let me describe the structure first and then I'll guide you through it.
    
    +Sounds good!
    
        ->LovingKindnessOutline
        
    
    
    +Not so sure about this
        I get it - many people are hesitant about this practice.  Let's jump in and try it first and then if you don't like it we can problem solve after!
        
        ->LovingKindnessOutline
    
->END



==== LovingKindnessOutline ====

    The first step is to get comfortable in a spot where you will have minimal distractions.
        
    Then you bring an image of yourself to mind.
        
    With this imagine in mind say softly to yourself the following three phrases
    
    May I live with ease
    May I be happy
    May I be free of suffering
        
    And then you repeat this process three times.
        
    ->LovingKindnessForSelfStart

->END

==== LovingKindnessForSelfStart ====

    Okay let's give it a try.
    
    First get comfortable wherever you are sitting.
    
    +Ready
    -
    
    Okay now bring yourself to mind, everything about who you are.  The parts you like and even the parts you maybe struggle with.
    
    You can also imagine a version of yourself from childhood if that feels easier.
    
    +Okay got it
    -
    
    And now repeat the following phrases saying them silently within your mind.
    
    May I live with ease
    
    May I be happy
    
    May I be free of suffering
    
    Take your time and try and feel the intention of each phrase as you say them for yourself.
    
    +Done saying them 3 times each
    
    Great job.
    
    ->EndSession1

->END


==== EndSession1 ====

    Did you notice a shift in how you are feeling?
    
    +I feel calmer
        Great!
        If you like this is a good practice to do daily
    +I feel happier
        Wonderful
    +I feel the same

-> END


==== FindNewBot ====

No problem at all.  Sometimes it's a bit tricky to figure out who among my pals and I is going to be most helpful.  Let me see if I can find someone who can help you right now!
    
Can you give a short bit of feedback to me so I can improve first?
    
FEEDBACK __________
    
[Find a new inky for user.]

-> END