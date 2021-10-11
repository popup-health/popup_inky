// Locked by Pablo

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

-> System_check_for_visit


==== System_check_for_visit ====
//system checks for visit//
  + First visit
        -> First_visit 
  + Second visit
        -> Second_visit 
  + Third visit
        -> Third_visit 

//******************************************//

//FV: I feel we should handle this intervention with more care, because for some users imagining the stressful sitaution as vividly as possible by themselves can be just too much. We could explore going up in increments, imagining a stressful situation up to a level 3 and then breath, calm yourself. Return to it and try it more vividly each time but with the sfatey that you know how to return to your breath and to center. Another option is to use the "questions for vividness" earlier, since they are helping untangle the stressful situation and lessen it by the questions of how probable it could actually happen and what could you do to handle it. 

==== First_visit ====
//image of bot here
{userName}, my name is Visionary. I can teach you imagery exposure techniques to help you find relief from worries and fears. 
//FV: "imagery exposure techniques" feels like a big word, could we try to explain it in more plain language? 
To make this technique work, you must first raise your stress by "living" your stressor, then learn how to control it by breathing.
//FV: I would say "imagining" not living it. 
The idea is to help you "habituate" to a stressful situation. This doesn't mean the issue will disappear, but you can be more effective in dealing with it.
//Fv: I would add "and have tools at hand to manage it if it comes back..." so the user feels they will get something more than just learning to habituate to the stress. 
I know it sounds a bit counter-intuitive, but experience shows that it works if you commit to do it well. Are you ready to do it?
  + Ok! let's start
        -> Imagery 
  + Already very stressed
        -> Already_very_stressed 

==== Already_very_stressed ====
Ok. Take a minute to imagine the possible consequences of this stressful situation with as much detail as possible. Let me know when you are done.
  + Done
        -> howVividlyDidYou 

= howVividlyDidYou
How vividly did you imagine this situation? - Use 0 for not vivid at all, and 10 for extremely vivid
        -> Imagery.selector

==== Imagery ====
Close your eyes, imagine the worst possible event could happen related to "{stressor}" as clearly as possible for 10 to 30 seconds.
  + Done
    Let me know how vivid the image was, 0 meaning not vivid at all and 10 meaning extremely vivid. 
    -> selector
    
=selector
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
    - -> Stress_evaluation

==== Stress_evaluation ====
As you pictured the issue, how stressed were you feeling? Zero means not stressed at all and 10 means extremely stressed. 
    -> selector
=selector
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
    - -> selectStressLeve 

= selectStressLeve
  + {stressLevel <= 2}
    -> Low_stress 
  + {stressLevel > 2} 
    -> High_stress 

==== Low_stress ====
The more vividly you are experiencing your fear, the more helpful this exercise can be.
Remember that raising your stress and later learning to control it and relax helps you "habituate" with the stressful situation, and ultimately control your fear.
If you don’t find the image stressful enough, consider other images until you find the most distressing one. 
  + Repeat
    Alright, let's make an effort to first raise your level of stress, so later we can learn to control it.
        -> Imagery
  + Next step
        -> High_stress 

==== High_stress ====
Next, use all of your senses to really experience the image for a minute. It might feel scary for a moment, but it will pass! 
I will help you relax when you're done.
  + Done
    OK! Let's relax for a little bit.
        -> Relaxation_technique

==== Calmness_evaluation ====
How are you feeling right now? 
  + Calmer
    {Great.|Good.|Ok}  That's what we hope to have happen.
    -> Final_Nugget
  + The same
  + More stressed
    - -> More_stress 

==== More_stress ====
//system evaluates number of passes through this point
  + first pass
    Ok, let's do the relaxation technique again
        -> Relaxation_technique
  + second pass
        -> Second_pass 

==== Second_pass ====
Ok, we can stop here. Try to keep breathing slowly.
Do you want to try another relaxation technique guided by one of my friends?
  + Yes, please
        -> New_bot 
  + No, let's just finish
    Sorry it has not worked out today.
        -> Final_Nugget

==== New_bot ====
No problem. I will call a friend.  
Just remember, I know it is hard to face our fears, but combining vivid imagery with some powerful relaxation could help in the future.
//select new bot at random
    -> END

==== Relaxation_technique ====
//GIF of Visionary breathing slowl
Let’s take 5 deep breaths or more. You can follow the pace of the image here, or whatever works for you. Make yourself comfortable, sitting, or standing, whatever you like.&nbsp;
  + Ok, done
        -> Calmness_evaluation 


==== Questions_for_vividness ====
To increase the vividness of the image, I will ask you a few questions to guide your imagination. Answer them in your head and let me know when done.
1. Do you think just because you imagined this event, it might happen? 
  + Done
        -> IfThisEventWereT 

= IfThisEventWereT
2. If this event were to happen, what would you do to handle it? 
  + Ok, done
        -> HowAreYouBlowing 

= HowAreYouBlowing
3. Are you possibly blowing out of proportion the meaning of this imagined event?  
  + Done
        -> BasedOnFactsAndL 

= BasedOnFactsAndL

4. Based on what you know so far, how likely is this imagined event to happen?
  + Done
        -> Stress_evaluation 


==== Final_Nugget ====
Imagery exercises can help reduce the upcoming stress by "habituating" to it if you are able to do them as vividly as possible.
Try to practice imagery exposure a couple of times a day, especially as a way to reduce the fear of a potentially future stressful situation.
//go to farewell module
    -> END
    
//*******************************//
    
==== Second_visit ====
//system check for engagement
  + positive/neutral
    Great to see you again! Let's practice again making imagery as vivid as possible.
        -> doYouWantMeToGui
  + negative
    Perhaps last time it was not easy to imagine future fears vividly, or to control them afterwards.
        -> doYouWantToTryAg

= doYouWantMeToGui
Do you want me to guide you, or do you feel you can do it by yourself?
  + Guide me
    Of course! 
        -> Second_visit_positive_guide 
  + I can do it
  Sounds good. 
        -> Second_visit_positive_by_yourself 

= doYouWantToTryAg
Do you want to try imagery exposure again?
  + Ok 
    Alright.
    Remember, the idea is to use mental imagery that raises your stress first, then relax, and then learn to conquer it.
        -> Questions_for_vividness 
  + No, another technique
        -> New_bot 

==== Second_visit_positive_guide ====
Do you want to use the simple version you learned the first time we met, or do you want a more detailed version with multiple questions to increase the vividness of the image? 
  + Simple
    Sure
        -> Imagery
  + Multiple questions
    Certainly.
        -> Questions_for_vividness

==== Second_visit_positive_by_yourself ====
Take your time, and don't forget to imagine your event vividly and then breathe slowly for a few times.
Let me know when you are done.
  + Done
        -> byMyself
//        -> Calmness_evaluation 

==== byMyself ====
Did you get stressed before calming down?
  + Yes
    Great
    -> Final_Nugget
  + No
        -> Failure

= Failure
Could I help you with some elements of the imagery technique?
  + Yes, vividness
  Sure.
        -> Second_visit_positive_guide
  + Yes, calming down
  OK
        -> Relaxation_technique
  + It's OK
    Alright. I hope it worked at least a little bit.
        -> Final_Nugget
        
//*******************************//
    
    
==== Third_visit ====
//system checks for past engagement
  + positive/neutral
    Glad to see you again! You are getting quite good at imagining, habituating to, and ultimately defeating your fears!
        -> Second_visit.doYouWantMeToGui
  + negative
    Hmmm... I know last time was not optimal. Imagery exposure can be a powerful way to help habituate yourrself to stressful situations, but I agree that sometimes it can be hard to handle.
        -> Second_visit.doYouWantToTryAg


