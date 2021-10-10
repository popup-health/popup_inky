//LOCKED by Robert Gehorsam 10/10 2pm PDT

// ---- Visionary ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/85537
# title: Visionary
# author: by Pablo E. Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor = "Not getting enough funding"
VAR vividChoice = "0 to 10"
VAR stressLevel = "0 to 10"

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

==== First_visit ====
//image of bot here
{userName}, my name is Visionary. I like using imagery exposure techniques to help people find relief in their worries and fears. 
To make this technique work, you must first raise your stress, by "living" your stressor, and then learn how to control it by breathing, and considering alternatives. 
The underlying principle is to help you "habituate" to a stressful situation, to reduce its power on you.
I know it sounds a bit counter intuitive, but trust me, it works if you commit to do it well. Are you ready to do it?
  + Ok! let's start
        -> Imagery 
  + Already very stressed
        -> Already_very_stressed 

==== Already_very_stressed ====
Ok. Take a minute to imagine the possible consequences of this stressful situation with as much detail as possible. Let me know when you are done.
  + Done
        -> howVividlyDidYou 

= howVividlyDidYou
How vividly did you imagine this situation? - 0 meaning not vivid at all, and 10 meaning extremely vivid
  + user picks number from 0 to 10
        -> Low_stress 

==== Imagery ====
Close your eyes, imagine the worst possible event could happen related to "{stressor}" as clearly as possible for 10 to 30 seconds. 
    -> Vividness_evaluation

==== Vividness_evaluation ====
Let me know how vivid the image was, 0 meaning not vivid at all and 10 meaning extremely vivid. 
  + show multiple choice from 0 to 10
        -> Vividness 

==== Vividness ====
//select vivid choice from 0 to 10
{vividChoice}
    -> Stress_evaluation

==== Stress_evaluation ====
How stressed were you feeling? 0 meaning not stressed at all and 10 meaning extremely stressed. 
  + show multiple choice from 0 to 10
        -> selectStressLeve 

= selectStressLeve
//select stress level
{stressLevel}
  + {stressLevel} <= 2
        -> Low_stress 
  + {stressLevel} > 2
        -> High_stress 

==== Low_stress ====
The more real you are experiencing your fear, the more helpful this exercise will be.
Remember that raising your stress and later learning to control and relax helps you "habituate" with the stressful situation, and ultimately control your fear.
If you don’t find the image stressful enough, repeat the process until you find the most distressing one. 
  + Repeat
        -> alrightLetsMakeA 
  + Next step
        -> High_stress 

= alrightLetsMakeA
Alright, let's make an effort to first raise you level of stress, so later we can learn to control it.
    -> Imagery

==== High_stress ====
Next, use all of your senses to really experience the image for a minute. It is scary but it will pass! 
    -> Relaxation.wellRelaxTogethe

==== Relaxation ====
Relax time!
    -> Relaxation_technique

= wellRelaxTogethe
We'll relax together when you're done.
  + Done
        -> Relaxation 

==== Calmness_evaluation ====
How are you feeling right now? 
  + Calmer
        -> Calmer 
  + The same
        -> Same_stress 
  + More stressed
        -> More_stressed 

==== More_stressed ====
//system evaluates number of passes through this point
  + first pass
        -> More_stressed_first_pass 
  + second pass
        -> Second_pass 

==== More_stressed_first_pass ====
Ok, let's do the relaxation technique again
    -> Relaxation_technique

==== Same_stress ====
//system evaluates number of passed through this point
  + first pass
        -> Same_stress_first_pass 
  + second pass
        -> Second_pass 

==== Second_pass ====
Ok, we can stop here.
Try to breathe slowly some more.
Do you want to try another relaxation technique guided by one of my friends?
  + Yes, please
        -> New_bot 
  + No, let's just finish
        -> Failed_intervention 

==== Failed_intervention ====
Sorry it has not worked out today.
    -> Final_Nugget

==== New_bot ====
No problem. I will call a friend.  Just remember, I know it is hard to face our fears, but combining vivid imagery with some powerful relaxation could help in the future.
//select new bot at random
    -> END

==== Relaxation_technique ====
//GIF of Visionary breathing slowl
Let’s take 5 deep breaths or more, follow the above image rhythm or do it at your own pace. Make yourself comfortable, sitting, or standing, whatever you like.&nbsp;
  + Ok, done
        -> Calmness_evaluation 

==== Same_stress_first_pass ====
Ok... 
    -> Second_visit_positive_guide_2.closeYourEyesFor

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
3. How are you blowing out of proportion the meaning of this imagined event?  
  + Done
        -> BasedOnFactsAndL 

= BasedOnFactsAndL
4. Based on facts and logic, how likely is this imagined event to happen?
  + Done
        -> Stress_evaluation 

==== Calmer ====
Good to hear. 
{Great.|Good.|Ok}
    -> Final_Nugget

==== Final_Nugget ====
Imagery exercises can help reduce the upcoming stress by "habituating" to it if you make the effort to do them as vividly as possible.
Try to practice imagery exposure a couple of times a day, especially as a way to reduce the fear of a potentially future stressful situation.
//go to farewell module
    -> END
    
//*******************************//
    
==== Second_visit ====
//system check for engagement
  + positive/neutral
        -> Second_visit_positive 
  + negative
        -> Second_visit_negative 

==== Second_visit_negative ====
Perhaps last time it was not easy to imagine future fears vividly, or to control them afterwards.
    -> doYouWantToTryAg

= doYouWantToTryAg
Do you want to try again?
  + Ok ok
        -> alright 
  + No, another bot
        -> New_bot 

= alright
Alright.
    -> Second_visit_positive_guide_2

==== Second_visit_positive ====
Great to see you again! Let's keep facing our fears as vividly as possible.
    -> Second_visit_positive_guide.doYouWantMeToGui

==== Second_visit_positive_guide_2 ====
Remember, the idea is to raise your stress first, to then learn to conquer it.
    -> closeYourEyesFor

= closeYourEyesFor
Close your eyes for a few seconds to begin framing  your stressful situation. Let me know when done.
  + Done
        -> Questions_for_vividness 

==== Second_visit_positive_by_yourself ====
Sounds good. Take your time, and don't forget to imagine your event vividly and then breathe slowly for a few times.
Let me know when you are done.
  + Done
        -> Calmness_evaluation 


//*******************************//
    
    
==== Third_visit ====
//system checks for past engagement
  + positive/neutral
        -> Third_visit_positive 
  + negative
        -> humIKnowLastTime 

= humIKnowLastTime
Hum... I know last time was not optimal. Imagery exposure can be powerful to help habituation to stressful situations, but I agree that sometimes it can be hard to handle.
    -> Second_visit_negative.doYouWantToTryAg

==== Third_visit_positive ====
Glad to see you again! We are getting quite good at imagining, habituating, and ultimately defeating your fears!
    -> Second_visit_positive_guide.doYouWantMeToGui

==== Second_visit_positive_guide ====
Of course! 
Do you want to use the simple version you leaned the first time we met, or the more complex one with multiple questions to improve the vividness of the image? 
  + Simple
        -> sure 
  + Multiple questions
        -> certainly 

= doYouWantMeToGui
Do you want me to guide you, or do you feel you can do it by yourself?
  + Guide me
        -> Second_visit_positive_guide 
  + I can do it
        -> Second_visit_positive_by_yourself 

= sure
Sure
    -> Imagery

= certainly
Certainly.
    -> Questions_for_vividness

