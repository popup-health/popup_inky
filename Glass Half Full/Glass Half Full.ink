// ---- Glass Half Full ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84359
# title: Glass Half Full
# author: by Pablo Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor = "am running late on many deadlines" //taken from greeting module
//these two variables below belong to a list of positiveIdeas by the user:
VAR positiveIdea = "we are creating a cool product" // second time: "we are leading the creation of novel media for stress management"
//these two variables below belong to a list that has a stressor and a (positive) spin from other users
VAR listSpins_stressor = "a deadline approaching fast" 
VAR listSpins_spin = "I am making progress in my career"  

-> System_check

==== System_check ====
//system check for current visit
  + First visit
        -> First_visit 
  + Second visit
        -> Second_visit 
  + Third visit
        -> Third_visit 


//*******************************************************//
//*******************************************************//


==== First_visit ====
# IMAGE: Glass Half Full.png
{userName}, my name is Glass Half Full. 
I'm great at helping people find the silver lining of experiences and situations. I can show you how I do it using my positive-thinking techniques. They are great tools for managing stressful moments. Ready?
    + Ready!
        - -> First_positive_aspect

    = First_positive_aspect
    {To start|To begin|First}, I want you to reflect on one positive aspect, big or small, related to: <em>"{stressor}". 
    Do you want to see a few samples from other people to inspire you?
    + Yes, please.
        Sure. Here are three recent examples shared with me by other people:
        //pick 3 random examples from the list of past stressors and positiveIdeas
        <em>"too much work to do" >> "I am progressing in my job"
        <em>"I have too much debt" >> "I am growing my business"
        <em>"I don't like how my boss treats me" >> "At least I have a stable job during this pandemic"
    + No, I'm fine.
        {Great!|Good!}
      - Once you think of a positive aspect, feel free to share if you want.
      + Don't want to share
        {No problem|That is fine} I am glad you found a positive aspect. Let's keep moving.
            -> Second_positive_aspect
      + Cannot think of one
            -> Help_finding_positive_aspect 
      + User enters positive aspect here:
            -> positiveAspectEn 
            
    = positiveAspectEn
    ~ positiveIdea = "we are creating a cool product" //enter in list of positive aspects with timestamp
    <em>{positiveIdea}
    {Very nice|Wonderful}, good start!    
        -> Second_positive_aspect

    = Help_finding_positive_aspect
    That's ok. Let's take an extra minute to reflect a bit more. Even during the most stressful moments, with the right tools at hand, we can find a positive path forward. 
    For example, another user was stressed about <em>"i got a new boss who is a jerk"</em> and thought of this positive aspect: <em>"i have a new job that is helping me grow professionally"</em> //pick a stressor and spin at random from a user that belongs to the SAME STRESS CATEGORY determined in the stress_detection module (work, family issues, etc.)
    When you're ready, think about one positive aspect of your situation. If you share it with me, I could remind you in the future.
      + Don't want to share
        Making an effort finding a positive aspect is great!
            -> Second_positive_aspect 
      + User enters positive aspect:
            -> positiveAspectEn 

    = Second_positive_aspect
    Let's see if we can think of one more! Think of another positive aspect. You can share it with me if you'd like.
      + I don't know
        It's ok. Let me help you with a change of perspective.
//        Even if you are having a hard time finding a positive aspect right now, it's possible you may find yourself thinking of one later.
        -> inYourShoes
      + Don't want to share
        No issues. Good job finding yet another aspect, though!
      + User enters new positive aspect here:
        ~ positiveIdea = "we are leading the creation of novel stress management media" //append to list of positive aspect with timestamp
        <em>{positiveIdea}
        {Great!|Good!|Nice work!}
        It's great that you found two positive aspects!
        - +Thanks!
          -> Final_reassurance

    = inYourShoes
    For example, have you ever told a friend to look on the bright side of some problem? 
    + Yes!
    Cool, Try to pretend you are that friend to yourself, and try to find a silver lining for your current stressor.
    +Not really
    It's OK. Then, just remember a moment when someone helped you realize a meaningful positive aspect out of a negative situation.
    Try to imagine what that person would tell you now.
    - +OK!
        - Did this help find a positive spin to your situation?
          + Yes
          Great to hear. Finding silver linings is a skill that can be developed with some practice and good will.
          + Not really
          It's ok, even if this time didn't work, keep trying, maybe later you will find yourself finding something else that is positive about your current stressful situation.
            - +Ok, Thanks!
                -> Final_reassurance

==== Final_reassurance ====
{Positive thinking and seeing the glass as half-full can be a good way to de-stress, making it easier to face challenges.|When you're feeling down about a situation, trying to find the positives can make it easier to handle.}
Thanks for chatting with me, {userName}. I hope this technique worked for you.
//go to farewell module
    -> END


//*******************************************************//    
//*******************************************************//

    
==== Second_visit ====
//system check for engagement
  ~ stressor = "too many lose pieces in the production process"
  + past engagement positive/neutral
        -> positive 
  + past engagement negative
        -> negative 

    = positive
    //system checks if user was able to find a positive aspect
      + NO past positive aspect was found
            -> positive_no_idea 
      + positive aspect was found
            -> positive_with_idea 
            
    = negative
    //system checks if user was able to find a positive aspect
      + NO past positive aspect found
            # IMAGE: Glass Half Full.png
            I know last time we talked, it was not particularly easy to find a positive aspect to your situation.
            -> tryAgain
      + Past positive aspect found
            -> negative_with_idea 

    = positive_with_idea
# IMAGE: Glass Half Full.png
    Glad to see you again! Finding positive aspects of challenging or stressful issues seems to {suit you well!|work for you!} 
    ~ stressor = "am running late on many deadlines"
    Last time you said that "<em>{positiveIdea}</em>" was a silver lining of "<em>{stressor}</em>"
    ~ stressor = "too many lose pieces in the production process"
    //stressor is taken from Greeting module (if it exists). Add "to {stressor} only if there is a stressor.
        -> letsKeepPractici
    
    = letsKeepPractici
    Let's keep practicing!
    Do you want me to guide you, or do you feel you know how to do it?
      + I know how to
            -> fantasticIWillSt 
      + Guide me
        Sure!
            -> First_visit.First_positive_aspect
    
    = fantasticIWillSt
    Fantastic. I will stand by while you think of a positive aspect about your current situation. Let me know when you are done.
      + Done
      - Great!
        If you want, you can share this positive element to keep track of your progress, and I can remind them to you in the future.
        + Not now
          No problem.
        + User enter positive aspect here:
          ~ positiveIdea = "we have a very nice team of collaborators" //append to list of positive aspect with timestamp
          <em>{positiveIdea}
          {Great|Good|Glad} to see that you are getting better at finding a positive spin for your stressful situations!
          - -> Final_reassurance

    = positive_no_idea
# IMAGE: Glass Half Full.png
    It's good to see you back! Finding positive elements even in negative issues is certainly an art that improves with practice.
    So, let's get to it.
        -> First_visit.First_positive_aspect

    = negative_with_idea
    ~ stressor = "am running late on many deadlines"
# IMAGE: Glass Half Full.png
    It may have felt a bit awkward last time, but you did find this positive aspect: <em>"{positiveIdea}"</em> as a silver lining to <em>"{stressor}"</em>
    ~ stressor = "too many lose pieces in the production process"
    Did you think about it a bit more after we chatted?
      + Yeah
        {Great!|Cool|Nice} That is the key, to keep reminding yourself that there are silver linings even to hard moments.
      + Not really
        It's fine. It will get easier to think about positive aspects with time and practice.
        - ->tryAgain

==== tryAgain ====
    Do you want to try again finding positive aspects even during stressful times?
      + Ok, let's try again
        {Glad to hear that!|Cool!|Nice!}
            -> First_visit.First_positive_aspect
      + No, change character
        Sure, I will call one of my friends. 
        Just remember that if you ever find yourself in a situation, it can be very helpful to try to look a situation as a glass that's half full, not half empty! :)
        //system gives the user a new bot
            -> END


//*******************************************************//
//*******************************************************//


==== Third_visit ====
//system check for engagement
  ~ stressor = "I am overwhelmed with the upcoming demo for HT"  // this is used here just to emulate the dialogue we normally take this stressor from greeting module
  + Positive/neutral engagement
        -> positive 
  + Negative engagement
        -> tryAgain 

    = positive
    //system checks for past positive idea
      + NO past idea
# IMAGE: Glass Half Full.png
        Hi, welcome back! The more we practice our powers of optimistic but realistic thinking, the better we get at better managing many stressful situations.
            -> doYouWantMeToGui
      + Past idea
          ~ stressor = "too many lose pieces in the production process"  // this is used here just to emulate the dialogue we normally take this stressor from greeting module
        # IMAGE: Glass Half Full.png
        - Last time you reframed this situation: <em>"{stressor}"</em> with this positive thought: <em>"{positiveIdea}"</em>
          ~ stressor = "I am overwhelmed with the upcoming demo for HT"  // this is used here just to emulate the dialogue we normally take this stressor from greeting module
            Did it help you reduce your worry?
            // {stresssor} comes from the greeting module. 
              + Yes, it did
                Good to hear! 
              + Just a little
                It's ok... as long as you have had some improvement, that means you are progressing towards a more optimistic view of the future, and developing a skill that will help you throughout life.
              + Not really
                Hum... sorry to hear that!  
                - If we practice more, you will get better at this.
                    -> doYouWantMeToGui

    = doYouWantMeToGui
    Do you want me to guide you through the technique again?
      + Sure
        {Cool|Nice|OK}
            -> First_visit.First_positive_aspect
      + No, I can do it.
            -> Second_visit.fantasticIWillSt 