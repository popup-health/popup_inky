

// Edits Summary
// DD 10/19/2021 Initial work

// Lock Status
// unlocked
//FV: added comments for editing. 
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
        -> Second_session
  + if third or later visit
        -> Third_session

==== First_session ====
Hi {username}, I’m Meditator. I teach a special kind of meditation called 'Loving Kindness.'  
Some people hear that and think it's not for them because it sounds a bit 'touchy feely' but there's so much evidence that this kind of practice helps boost mood, increase calmness, and helps us appreciate the small things in life.


    +Sounds good lets start!

        -> Session1_LovingKindness
    

    +Show me evidence
        
        ->ShowEvidence
        

-> END

==== ShowEvidence ====

    Here is a good article outlining a summary of some of the research findings.  As you can see there are a lot of great benefits from this practice.
        
    https://www.psychologytoday.com/ca/blog/feeling-it/201409/18-science-backed-reasons-try-loving-kindness-meditation
        
    +Okay let's get started then!
        -> Session1_LovingKindness
    +Not for me
        ->FindNewBot
        
->END

==== Session1_LovingKindness ====

    This practice is quite simple in its form.  It's all about generating positive feelings towards ourselves and towards others.
    
    For this first session, we're going to start with focusing on ourselves.  Many folks say that if you can't love yourself it is even harder to love others!  So a good place to start is generating some positivity towards ourselves.
    
    Let me describe the structure first and then I'll guide you through it.
    
    +Sounds good!
    
        ->Session1_LovingKindnessOutline
        
    
    
    +Not so sure about this
        I get it - many people are hesitant about this practice.  Let's jump in and try it first and then if you don't like it we can problem solve after!
        
        ->Session1_LovingKindnessOutline
        
        //Fv: should we also give the option to exit here? 
    
->END



==== Session1_LovingKindnessOutline ====

    The first step is to get comfortable in a spot where you will have minimal distractions.
        
    Then bring an image of yourself to mind.
        
    With this imagine in mind, say softly to yourself the following three phrases:
    
    May I live with ease.
    
    May I be happy,
    
    May I be free of suffering.
        
    And then you'll repeat this process three times. 
    
    Are you ready to try it out?
        //Fv: what are the options of answers here? +yes +I'm ready 
    ->Session1_LovingKindnessForSelfStart

->END

==== Session1_LovingKindnessForSelfStart ====

    Okay let's give it a try.
    
    First get comfortable wherever you are sitting.
    
    + Ready
    -
    
    Okay now bring yourself to mind, everything about who you are.  The parts you like and even the parts you maybe struggle with.
    
    You can also imagine a version of yourself from childhood if that feels easier.
    
    + Okay got it
    -
    
    And now repeat the following phrases saying them silently in your mind.
    
    May I live with ease.
    
    May I be happy.
    
    May I be free of suffering.
    
    Take your time and try and feel the intention of each phrase as you say them to yourself.
    
    + Done saying them 3 times each. 
    
    Great job.
    
    ->EndSession1

->END


==== EndSession1 ====

    Did you notice a shift in how you are feeling?
    
    +I feel calmer
        Great!
        If you like this exercise it's a good practice to do it daily.
        Next time we meet we'll start applying this kindness exercise towards others. Until then!
        ->END
    +I feel happier
        Wonderful. If you like this exercise it's a good practice to do it daily.
        Next time we meet we'll start applying this kindness exercise towards others. Until then!
        ->END
    +I feel the same
        No problem. Sometimes it takes a little bit of practice to start feeling those positive thoughts towards yourself. Try practicing this exercise by yourself over the course of the week and see if you start feeling more kindness towards yourself.
        Next time we meet we'll start applying this kindness exercise towards others. Until then!
-> END


==== FindNewBot ====

No problem at all. Sometimes it's a bit tricky to figure out who among my pals and I is going to be most helpful. Let me see if I can find someone who can help you right now!
    
Can you give a short bit of feedback to me so I can improve first?
    
FEEDBACK __________
    
[Find a new inky for user.]

-> END

==== Second_session ====
Hi {username}, welcome back! Last time I showed you an exercise to practice  'loving kindness technique' towards yourself. I hope you had the chance to use it on your own.

Today, I want to show you how to apply this exercise of loving kindness towards a stranger. Sometimes it is easier to practice kindness to those we don't know well. 

Do you want to try it out?

    +Sounds good lets start!

        -> Session2_LovingKindness
    

-> END

==== Session2_LovingKindness ====

    This practice is quite simple in its form.  It's all about generating positive feelings towards ourselves and others.
    
    For this second session we're going to focus on a random stranger. This way you can start spreading positivity out there in the world.
    
    Let me remind you of the structure first and then I'll guide you through it.
    
    +Sounds good!
    
        ->Session2_LovingKindnessOutline
        
    
    
    +Not so sure about this
        It's okay to feel like this. Thinking about being kind to someone you don't even know can be hard. Let's jump in and try it first and then if you don't like it we can problem solve after!
        
        ->Session2_LovingKindnessOutline
    //FV: I would provide an option to exit here. 
    
->END



==== Session2_LovingKindnessOutline ====

    The first step is to get comfortable in a spot where you will have minimal distractions.
        
    Then you bring an image of a stranger to mind. It can be someone you passed by today, a person you don't know too well, or just the idea of a person in your mind.
        
    With this image in mind, say to them the following three phrases:
    
    May they live with ease.
    May they be happy.
    May they be free of suffering. 
        
    And then you repeat this process three times. Ready to try it out?
        
    ->Session2_LovingKindnessForStrangerStart

->END

==== Session2_LovingKindnessForStrangerStart ====

    Okay let's give it a try.
    
    First get comfortable wherever you are sitting.
    
    +Ready
    -
    
    Okay now bring the image of that person to mind. Picture them smiling at you and envision what they look like, what they're wearing.
    
    +Okay got it
    -
    
    Now repeat the following phrases, saying them silently in your mind:
    
    May they live with ease,
    
    May they be happy.
    
    May they be free of suffering. 
    
    Take your time and try and feel the intention of each phrase as you say them to that person.
    
    +Done saying them 3 times each. 
    
    Great job.
    
    ->EndSession2

->END


==== EndSession2 ====

    Did you notice a shift in how you are feeling?
    
    +I feel calmer
        Great!
        Remember that it's a good practice to do this exercise daily. You can even start saying these phrases in your mind when you see any strangers as you go on in your life.
        
        Next time we meet we'll apply this exercise to someone you know that might be difficult to deal with. 
        
        No need to stress about it now, we'll work on it next time together. 
        
        See you soon!
        
        ->END
        
    +I feel happier
       Remember that it's a good practice to do this exercise daily. You can even start saying these phrases in your mind when you see any strangers as you go on in your life.
        
        Next time we meet we'll apply this exercise to someone you know that might be difficult to deal with. 
        
        No need to stress about it now, we'll work on it next time together. 
        
        See you soon!
        
        ->END
        
    +I feel the same
    
        No problem. Sometimes it takes a little bit of practice to start feeling those positive thoughts towards yourself and towards others. 
        
        Try practicing this exercise over the course of the week and see if you start feeling more kindness towards others. 
        
        You can even start saying these phrases in your mind when you see any strangers as you go on in your life.
        
        Next time we meet we'll apply this exercise to someone you know that might be difficult to deal with. 
        
        No need to stress about it now, we'll work on it next time together. 
        
        See you soon!
-> END



==== Third_session ====
Hi again, {username}. I hope you are well and that you had a chance to practice saying those kind phrases to yourself and to others. 

Today's exercise will be about redirecting those positive thoughts to someone in your life that might be difficult to deal with. This can be hard to tackle, but we can try together. 

Are you ready to try it out?

    +Sounds good lets start!

        -> Session3_LovingKindness
        
//Fv: you could give here the option to try the previous two exercises again, because maybe they are not ready yet to go this extra step towards someone that is difficult to deal with.     

-> END

==== Session3_LovingKindness ====

    Remember that this exercise is all about generating positive feelings towards ourselves and others.
    
    Sending loving wishes to those that we have difficulty with may be hard, but it is helpful and releases a lot of tension for both you and them. 
    
    Let me remind you of the structure of the exercise first and then I'll guide you through it.
    
    +Sounds good!
    
        ->Session3_LovingKindnessOutline
        
    
    
    +Not so sure about this
        It's okay to feel like this. This is a hard exercise, and it can be hard to love others that don't seem to think the same way of us. Let's take it one step at a time and hopefully by the end of the exercise you'll see the value of it.
        
        ->Session3_LovingKindnessOutline
    
->END



==== Session3_LovingKindnessOutline ====

    The first step is to get comfortable in a spot where you will have minimal distractions.
        
    Then you bring an image of the person to your mind. 
        
    With this imagine in mind you'll say softly to them the following three phrases:
    
    May they live with ease.
    May they be happy.
    May they be free of suffering.
        
    And then you repeat this process three times. Got it? Ready to start?
        
    ->Session3_LovingKindnessForDifficultStart

->END

==== Session3_LovingKindnessForDifficultStart ====

    Okay let's give it a try.
    
    First get comfortable wherever you are sitting.
    
    +Ready
    -
    
    Okay now bring the difficult person to mind. It can be someone in your family, someone from work, or even a stranger that wronged you before. 
    
    Try to think about the person itself and not about what they did in the past. Picture them in comfortable setting, maybe smiling with their family, playing with their pet, or you could imagine them as a child. 
    
    +Okay got it
    -
    
    And now repeat the following phrases saying them silently in your mind:
    
    May they live with ease.
    
    May they be happy.
    
    May they be free of suffering.
    
    Take your time and try and feel the intention of each phrase as you say them for yourself.
    
    +Done saying them 3 times each.
    
    Great job.
    
    ->EndSession3

->END


==== EndSession3 ====

    Did you notice a shift in how you are feeling?
    
    +I feel calmer
        That's great news! Sending love to those that are difficult is a huge step and I am glad that you did it. 
        You can remember to do this exercise regularly. 
        By now I think you've mastered this exercise and can use any version of it to practice loving kindness towards yourself and others. 
        
        It was nice going over these exercise with you. I wish that you live with ease, be happy and be free of suffering. 
        
        Take care!
        
        ->END
    +I feel happier
       That's great news! Sending love to those that are difficult is a huge step and I am glad that you did it. 
        You can remember to do this exercise regularly. 
        By now I think you've mastered this exercise and can use any version of it to practice loving kindness towards yourself and others. 
        
        It was nice going over these exercise with you. I wish that you live with ease, be happy and be free of suffering. 
        
        Take care!
        
        ->END
        
    +I feel the same
        No problem. Sending love to those that are difficult is a huge step and it might take more than once to get used to it.Try practicing this exercise over the course of the week and see if you start feeling more kindness towards others. 
        
        Remember that how we feel towards others will reflect back to ourselves.
        
        It was nice going over these exercise with you. I wish that you live with ease, be happy and be free of suffering. 
        
        Take care!
-> END
































