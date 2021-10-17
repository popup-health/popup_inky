// ---- Hero ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84259
# title: Hero
# author: Author: Tchiki Davis, Transcribed/modified by: Pablo E. Paredes // https://docs.google.com/document/d/1dXxDewbI9SzduO9j-HEsv0UwNHmXqtIB9MyVvd14LcE/edit
// -----------------------------

VAR userName = "Pablo"
VAR userStrengthVar = "I am stoic"
VAR findstrength = "TRUE"
VAR strengthSamples = "be persistent, be creative, be a visionary"
VAR strengthUses = " used when MVP didn't work, found great production manager, have impactful startup"

-> Session_Check

==== Session_Check ====
//System check for current session
  + First Session
        -> First_Session 
  + Second Session
        -> Second_Session 
  + Third Session
        -> Third_Session 


//******************************************************//
//******************************************************//


==== First_Session ====
# IMAGE: Hero.png
Hi {userName}. My name is Hero because I make an effort every day to capitalize on my strengths of courage, selflessness, and dedication to justice.💪🏽
Capitalizing on our strengths helps us both reach our goals and feel better about ourselves. And even if you don't feel it at the moment, every single one of us has some strengths we can take advantage of.
I can show you how to do it. Are you ready?
  + I'm ready 👍
    Okay, let’s do it.
    -> Identify_Strength

    = Identify_Strength
    Take a moment to identify one of your strengths.
    Sometimes your strengths are just who you are as a person, like being creative, funny, thoughtful, loyal, or resilient. 
    Do you have some skills you’re proud of, like being a good cook, a fast reader, or physically strong?
      + I've got one
            -> Share_strength 
      + Can't think of one
            -> Cant_think_of_strength 

    = Cant_think_of_strength
    Sometimes it’s hard to clearly identify one. But we all have strengths. 
    Even small things can be strengths—things like knowing how to darn a sock or keep your plants watered.
      + Ok, I thought of one
            -> Share_strength 
      + This isn't working
        Don’t worry about it. Strength finding isn’t that easy to do at the beginning. If you keep thinking, I am sure you will find something later in the day.
        For now, let's go see another of my colleagues.
            -> Random_bot_selector

    = Share_strength
    Great! Do you want to share your strength?
      + Naw
      + User enters strength here
        ~ userStrengthVar = "I am stoic"
        <en>"{userStrengthVar}"
        - -> Strength_used_in_the_past

    = Strength_used_in_the_past
    Now, take a minute to think of one specific time when you used this strength in the past.
      + I've got it
            -> Strength_used_in_the_future 
      + I'm not sure
            -> maybeYouUsedYour 

    = maybeYouUsedYour
    Maybe you used your strength of leadership to coordinate a group of people. Or, maybe you used your computer skills to post a video online.
    Just take a moment to think about how this strength helped you do something.
      + Okay, I'm done
        {Good|Cool|Nice}
            -> Strength_used_in_the_future
      + I need more samples 
            -> theseAreSomeSamp 

    = theseAreSomeSamp
    These are some samples of strengths and uses: "{strengthSamples}"//need list of additional strengths and accomplishments
      + I got it
      + I can't think of anything
        Don’t worry about it, it might come to you later.
        - -> Strength_used_in_the_future

    = Strength_used_in_the_future
    Next, take a moment to reflect on one way you can use this strength in the future.
      + Done
            -> Scheduling_Reminder 
      + I'm not sure
      + Tips please
        - -> weCanIntentional 
    
        = weCanIntentional
        We can intentionally use our strengths as we go about our day.
        For example, if your strength is assertiveness, you might stand up for yourself to get a raise. Or, if your strength is singing, you might join a choir so that you can use your strength more often. 
        //future idea for development: classify strengths based on topics, personality, skills, etc...? 
          + Okay
                -> Scheduling_Reminder 
          + More examples, please
            Sure, here are some examples of uses of strengths in the future: \\need list of other examples of use of strengths in the future
            - + Thanks
                -> Scheduling_Reminder 

    = Scheduling_Reminder
    Finally, Let's schedule a reminder for the exact time that you’ll use this strength. This can really help you stay on track.
    
    Do you want me to help with that?
      + Enter in calendar
        //Use date selector
        //Enter in calendar {userStrength}
            Great job!
            -> reaffirmation
      + Send me a message
            -> Message_reminder 
      + No, thanks.
            That was a great beginning
            -> reaffirmation 
    
    = reaffirmation
    # IMAGE: Hero.png
    Keep in mind that the more you use your strengths, the better you are likely to feel.
      + Thanks!
        //go to farewell module
        -> END

    = Message_reminder
    Do you want it tomorrow or next week?
      + Tomorrow
        Perfect, will do!
      + Next week
        Perfect, will do!
      + Forget it
        No problem!
        - You are off to a great start//save date for when to send message
        -> reaffirmation
        
==== Random_bot_selector ====
{Of course|Sure|No problem}, I will call one of my {colleagues|friends|pals}. 
Just remember that with some practice, capitalizing on your strengths could become a valuable way to find calmness and meaning.
//select bot at random
    -> END


//*************************************************************//    
//*************************************************************//    


==== Second_Session ====
//System check for past engagement rating
  + Past session positive or neutral
  # IMAGE: Hero.png
    Hey champ, good to see you. Let’s build on what we did last time.
        -> Second_strength
  + Past session negative
        -> Second_Session_after_negative 

    = Second_Session_after_negative
    # IMAGE: Hero.png
    Hi there. Figuring out our strengths can be hard sometimes.
    Do you want to try again with a different approach?
      + Sure, let's try again
            -> Second_strength 
      + I want another bot.
            -> Random_bot_selector 

    = Second_strength
    See if you can think of a different strength than the one you thought of last time.
      + IF there is recorded strength
        This was your past strength: "{userStrengthVar}"
      + IF there is NOT a recorded strength
        - -> rememberStrength 

    = rememberStrength
    Remember, strengths can be personal characteristics or they can be skills. They can really be anything you’re good at or proud of.
      + I got it
        - {Excellent!|Great!|Nice!}
          Do you want to share your new strength?
          + Show me examples
                -> checkForExamples 
          + User enters new strength
            -> userStrength

    = checkForExamples
    //system check for examples
      + if samples available
        Sure, here are more examples:
        {strengthSamples}
        -> shareStrength
      + if samples no available
            -> endofList 

    =shareStrength
    Do you want to share your strength?
      + Need more samples
            -> checkForExamples 
      + I don't want to share
            -> Capitalizing_on_Strength 
      + User enters new strength
            -> userStrength 
    
    = endofList
    That was the end of the list. I hope that was helpful. Do you want to share your strength?
      + Prefer not to share
        It's ok!
            -> Capitalizing_on_Strength
      + Just can't find one
        It's ok! Even if you cannot think of one now, it may come to you later. 
        If that happens, think about how you can use this strength in new ways.
        Any time you identify a strength, go ahead and try to put it to good use. And feel free to come back and chat with me if you need some support.
        // go to Farewell module
            -> END
      + user enters new strength:
            -> userStrength
    
    = userStrength
            ~ userStrengthVar = "I am very creative"
            "{userStrengthVar}"
            {Great.|Wonderful.}
            -> Capitalizing_on_Strength
        
    = Capitalizing_on_Strength
    Let’s think now of how to use this strength in new ways. 
    For example, if you’re focusing on your strength of kindness, you might give someone a gift, give someone a compliment, volunteer your time, or even be nicer to yourself.
    Try to think of a few different ways you might use your unique strength. 
      + I thought about it 
        {Super!|Great!|Nice!} Now choose one way you’ll capitalize on your strength and decide when you’ll put it to practice.
            -> First_Session.Scheduling_Reminder
      + Can't think about it now
            -> itsOkayMaybeItll 
      + More samples, please
            -> sureHereAreSomeM 
    
    = itsOkayMaybeItll
    It’s okay. Maybe it’ll come to you later.  
    Finding strenghts could be hard but keep thinking, even small things that you enjoy could reflect your strenghts in the future.
    //set findStrength = FALSE
    Do you want to try a different relaxation technique?
      + Sure
            -> Random_bot_selector 
      + Let's just wrap up
      {Sure|Of Course}
            -> First_Session.reaffirmation
    
    = sureHereAreSomeM
    Sure, here are some more examples on how to use your strengths:
    {strengthSamples} {strengthUses}
      + Thanks!
        - {Super!|Great!|Nice!} Now decide when you may want to use it in the future.
            -> First_Session.Scheduling_Reminder


//*************************************************************//    
//*************************************************************//    


==== Third_Session ====
//System check for past engagement rating
  + Past session positive or neutral
        -> Third_Session_after_positive 
  + Past session negative
        -> Third_Session_after_negative 

    = Third_Session_after_negative
    # IMAGE: Hero.png
    Hi again. We might not have made as much progress as you would like, but you still came back. 
    That’s impressive. So let’s add persistence and stick-to-it-iveness to your list of strengths and give this another go.
      + Sounds good!
            -> whatAspectsOfCap 
      + No, a new technique
            -> Random_bot_selector 

    = whatAspectsOfCap
    What aspects of capitalizing on your strengths would you like more help with?
      + Finding strengths
        Capitalizing on strengths can feel hard when we feel like we don’t have many strengths.
        But the truth is: We all have lots of strengths.
        Even if they feel silly or small, we have them and we can use them.
        Maybe you make really good toast, you’re good at video games, or you like to learn new things.
        For example, I am really good at video games, and have a great memory for things.
      + Using strengths
        If we use our strengths regularly (and remind ourselves that they are strengths), we feel our life has purpose and know we can add value.
        //FV: I would change this part: "we feel a bit more like we’re good at life—and that feels good" because it sort of assumes we are not feeling we are good at life. An option could be "we feel purpose and know we can add value" or "we feel more confidence and driven." //PP: Done
        For example, if creativity is your strength, you might name your pet something cool, pick out unique clothes, or have a good imagination.
        -  + Understood
            -> thatsWhyEvenIfIt 
    
    = thatsWhyEvenIfIt
    That’s why, even if it’s hard sometimes, spending time doing things we’re good at feels good. 
    Are you ready for trying it again?
      + Ya, Let's try again
        Just think of one of your strengths and new ways on how to use it. 
            -> doYouWantToSee
      + No, It's not for me
            -> Second_Session.itsOkayMaybeItll
    
    = Third_Session_after_positive
    # IMAGE: Hero.png
    You’re back! That’s impressive. Obviously we should add stick-to-it-iveness to your list of strengths ;)
    //system checks if last time user didn't find a strength 
      + IF findStrength == TRUE
            -> doYouWantARefres 
      + IF findStrength == FALSE
            -> beforeWeMoveOnWe 
    
    = doYouWantARefres
    Do you want a refresher on how to identify your strengths?
      + Give me a refresher
        Let's go.
            -> First_Session.Identify_Strength
      + I know how to do it
        {Excellent!|Great!Wonderful!}
        Just think of one of your strengths and new ways on how to use it. 
            -> doYouWantToSee
    
    = beforeWeMoveOnWe
    Before we move on, were you able to think of a strength after our last session?
      + Not really!
        No problem. Perhaps this time it will be easier.
      + Yes, I did!
        Great, perhaps this time you can talk about it, or you can think of a new strength.
        - -> doYouWantARefres

    = doYouWantToSee
    Do you want to see examples? // use the word more as you traverse the list of samples
      + Yes, please
        Here are some examples of strengths and their uses from other users:
        {strengthSamples} + {strengthUses}  
        //show three samples and strenghts listed side by side take at random from a the aggregate list of strenghts + uses from all users
      + No I don't
        Take your time. Let me know when you are done.
        - + Done
            -> ifYouWantYouCanS 

    = ifYouWantYouCanS
    If you want, you can share your strength so I can remind you in the future.
      + Don't want to share
        No problem, perhaps you can come back to chatting with me about strengths in the future.
      + User enters new strength here
        ~ userStrengthVar = "I am a visionary"
        "{userStrengthVar}"
        Great job!
        - -> First_Session.reaffirmation
        