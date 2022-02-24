// ---- Visionary ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/85537
# title: Visionary
# author: by Pablo E. Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor = "Not getting enough funding" // taken from greeting module
VAR vividLevel = "5"
VAR stressLevel = "5"
VAR vividThreshold = 3

-> System_check_for_visit


==== System_check_for_visit ====
//system checks for visit//
  + First visit
        -> First_visit 
  + Second visit
        -> Second_visit 
  + Third visit
        -> Third_visit 


//**************************************************//
//**************************************************//


==== First_visit ====
# IMAGE: Visionary_start.png
{userName}, my name is Visionary. I can teach you techniques to face your fears and help you find relief from them. 
To make this technique work, you must first raise your stress by "imagining" your stressor, then learn how to control it by breathing.
The idea is to help you "habituate" to a stressful situation. This doesn't mean the issue will disappear, but you can be more effective in dealing with it, and have tools at hand to manage it if it comes back.
I know it sounds a bit counter-intuitive, but it can really work if you commit to do it well. Are you ready to do it?
  + Ok! let's start
    Remember - we will start slow, aiming for imagining just enough details to just raise your stress above your current level.
        ~ vividThreshold = 3
        -> Imagery 
  + Already too stressed
    - Ok. Take a minute to recount or imagine the possible consequences of this stressful situation with enough detail. Let me know when you are done.
    + Done
        - How vividly did you imagine this situation? - Use 0 for not vivid at all, and 10 for extremely vivid
          ~ vividThreshold = 3
            -> VividSelector

    = Imagery
    Close your eyes, imagine {a negative|the worst possible} event that could happen related to "{stressor}" for 10 to 30 seconds, and let me know when Done. 
      + Done
        -> VividSelector
        
    = VividSelector
        How vividly did you imagine your fear, 0 meaning "not vivid at all" and 10 meaning "extremely vivid"? 
        + 0
        ~ vividLevel = 0
        + 1
        ~ vividLevel = 1
        + 2
        ~ vividLevel = 2
        + 3
        ~ vividLevel = 3
        + 4
        ~ vividLevel = 4
        + 5
        ~ vividLevel = 5
        + 6
        ~ vividLevel = 6
        + 7
        ~ vividLevel = 7
        + 8
        ~ vividLevel = 8
        + 9
        ~ vividLevel = 9
        + 10
        ~ vividLevel = 10
        -  + {vividLevel < vividThreshold}
                -> Low_vividness 
           + {vividLevel >= vividThreshold} 
                -> Stress_evaluation
                
    = Low_vividness
    A more vivid image of the event will help you later learn how to manage the stress. 
    Let's aim to raise it a bit more so you can later master your ability to deal with your fear related to: "{stressor}"
    Do you want to spend some time imagining the event with more detail?
      + Sure
            -> vividAgain
      + No, Next step
            -> Stress_evaluation

    = vividAgain
        Ok. Try to pay attention to details such as where it will be, who will be there, at what time, what happened before the even, etc... 
        Let me know when you are done.
        - + Done
            -> VividSelector


    = Stress_evaluation
    As you pictured the issue, how stressed were you feeling? Zero means not stressed at all and 10 means extremely stressed. 
        -> StressSelector
    =StressSelector
        + 0
        ~ stressLevel = 0
        + 1
        ~ stressLevel = 1
        + 2
        ~ stressLevel = 2
        + 3
        ~ stressLevel = 3
        + 4
        ~ stressLevel = 4
        + 5
        ~ stressLevel = 5
        + 6
        ~ stressLevel = 6
        + 7
        ~ stressLevel = 7
        + 8
        ~ stressLevel = 8
        + 9
        ~ stressLevel = 9
        + 10
        ~ stressLevel = 10
        -  + {stressLevel <= 2}
                -> Low_stress 
           + {stressLevel > 2} 
                -> High_stress 
    
    = Low_stress
    The more vividly you are experiencing your fear, the more helpful this exercise can be.
    Remember that raising your stress a little, and later learning to control it and relax helps you "habituate" with the stressful situation, and ultimately control your fear.
    If you don’t find the image stressful enough, consider other images until you find one that raises your stress a bit more. 
      + Repeat
        Alright, let's make an effort to first raise your level of stress, so later we can learn to control it.
            -> Imagery
      + Next step
            -> High_stress 
    
    = High_stress
    Next, use all of your senses to really experience the image for a minute. It might feel a bit scary for a moment, but it will pass! 
    I will help you relax when you're done.
      + Done
        OK! Let's relax for a little bit.
            -> Relaxation_technique

==== Relaxation_technique ====
//PP: Engineering to add GIF of Visionary breathing slowly
Let’s take 5 deep breaths or more. You can follow the pace of the image here, or whatever works for you. Make yourself comfortable, sitting, or standing, whatever you like.&nbsp;
  + Ok, done
    - How are you feeling right now? 
      + Calmer
        {Great.|Good.|Ok}  That's what we hope to have happen.
        -> Final_Nugget
      + The same
      + More stressed
        - //system evaluates number of passes through this point
          + first pass
            Ok, let's do the relaxation technique again
                -> Relaxation_technique
          + second pass
            - Ok, we can stop here. Try to keep breathing slowly.
              Do you want to try another relaxation technique guided by one of my friends?
                  + Yes, please
                        -> New_bot 
                  + Let’s just finish
                    Sorry it has not worked out today.
                        -> Final_Nugget

==== New_bot ====
No problem. I will call a friend.  
Just remember, I know it is hard to face our fears, but combining vivid imagery with some powerful relaxation could help in the future.
//select new bot at random
    -> END

==== Final_Nugget ====
#IMAGE: Visionary_end.png
Imagery exercises can help reduce the upcoming stress by "habituating" to it if you are able to do them as vividly as possible.
Try to practice imagery exposure a couple of times a day, especially as a way to reduce the fear of a potentially future stressful situation.
//go to farewell module
    -> END
    
    
//**************************************************//
//**************************************************//

    
==== Second_visit ====
//system check for engagement
  + positive/neutral
# IMAGE: Visionary_start.png
    Great to see you again! Let's practice again making imagery as vivid as possible.
        -> Guide
  + negative
# IMAGE: Visionary_start.png
    Perhaps last time it was not easy to imagine future fears vividly, or to control them afterwards.
        -> Imagining
    
    = Guide
    Do you want me to guide you, or do you feel you can do it by yourself?
      + Guide me
        Of course! 
            -> positive_guide 
      + I can do it
      Sounds good. 
            -> positive_by_yourself 
    
    = Imagining
    Do you want to try imagining your fears again?
      + Ok 
        Alright.
        Remember, the idea is to use mental imagery to first raise your stress, to then learn to relax, and ultimately conquer it.
            -> pickLevel 
      + No, a new technique
            -> New_bot 

    =pickLevel
    Do you want to try again the mild version of exposure we did last time, aim higher, or do you want me to ask guiding questions to help you raise your level of exposure?
    + Questions
      OK, Let's do it.
      -> Questions_for_vividness
    + Mild vividness
      Sure thing
      ~ vividThreshold = 3
    + Higher vividness
      Sure thing
      ~ vividThreshold = 5
      - -> First_visit.Imagery
        
    = positive_guide
    Do you want to use the simple version you learned, but this time aiming at a higher level of vividness, or do you want me to ask you guiding questions that could help increase the vividness of the image? 
      + Simple version
        Sure
        This time we will aiming at imagining as many details as possible to raise your stress higher than in the past.
            ~ vividThreshold = 5
            -> First_visit.Imagery
      + Multiple questions
        Certainly.
            -> Questions_for_vividness

    = positive_by_yourself
    Take your time, and don't forget to imagine your event vividly and then breathe slowly for a few times.
    Let me know when you are done.
      + Done
        - Did you get stressed before calming down?
          + Yes
            Great
            -> Final_Nugget
          + No
            - Could I help you with some elements of the imagery technique?
              + Yes, vividness
              Sure.
                    -> positive_guide
              + Yes, calming down
              OK
                    -> Relaxation_technique
              + It's OK
                Alright. I hope it worked at least a little bit.
                    -> Final_Nugget
        
==== Questions_for_vividness ====
To increase the vividness of the image, I will ask you a few questions to guide your imagination. Answer them in your head and let me know when done.
1. Do you think just because you imagined this event, it might happen? 
  + Done
    - 2. If this event were to happen, what would you do to handle it? 
      + Ok, done
        - 3. Are you possibly blowing out of proportion the meaning of this imagined event?  
          + Done
            - 4. Based on what you know so far, how likely is this imagined event to happen?
              + Done
                    -> First_visit.Stress_evaluation 

        
//**************************************************//
//**************************************************//    
    
    
==== Third_visit ====
//system checks for past engagement
  + positive/neutral
# IMAGE: Visionary_start.png
    Glad to see you again! You are getting quite good at imagining, habituating to, and ultimately defeating your fears!
        ~ vividThreshold = 6
        -> Second_visit.Guide
  + negative
# IMAGE: Visionary_start.png
    Hmmm... I know last time was not optimal. Imagery exposure can be a powerful way to help habituate yourself to stressful situations, but I agree that sometimes it can be hard to handle.
    Do you want to aim for a low or high level of vividness?
        -> pickLevel
    
    =pickLevel
    Do you want to try again the mild version of exposure we did last time, aim higher, or do you want me to ask guiding questions to help you raise your level of exposure?
    + Higher vividness
      Sure thing
      ~ vividThreshold = 7
      -> First_visit.Imagery
    + Mild vividness
      Sure thing
      ~ vividThreshold = 3
      -> First_visit.Imagery
    + Questions
      OK, Let's do it.
      -> Questions_for_vividness
        


