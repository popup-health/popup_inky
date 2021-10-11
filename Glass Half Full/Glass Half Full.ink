//locked in by FV 
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
{userName}, my name is Glass Half Full. I can help you use positive-thinking techniques to help my friends find ways to manage stressful moments.
    -> First_positive_aspect

==== First_positive_aspect ====
{To start|To begin|First}, I want you to reflect on one positive aspect, big or small, about your situation: "{stressor}". 
Feel free to share if you want.
  + Don't want to share
    {No problem|Let's keep moving}
        -> Second_positive_aspect
  + I am not sure
        -> Help_finding_positive_aspect 
  + User enters positive aspect here:
        -> positiveAspectEn 
        
= positiveAspectEn
~ positiveIdea = "we are creating a cool product" //enter in list of positive aspects with timestamp
{positiveIdea} 
{Very nice|Wonderful}, good start!    
    -> Second_positive_aspect

==== Help_finding_positive_aspect ====
That's ok. Let's take an extra minute to reflect a bit more. Even during the most stressful moments, we can find almost always find a positive path forward. 
For example, another person was stressed about "{stressor}" and discovered this positive aspect to their situation: "{listSpins_stressor}" //pick a stressor and spin from another user that belongs to the SAME CATEGORY determined in the stress_detection module (work, family issues, etc.)
When you're ready, think about one positive aspect of your situation. If you share it with me, I could remind you in the future when you feel you're in a similar situation.
  + Don't want to share
        -> Second_positive_aspect 
  + User enters positive aspect:
        -> First_positive_aspect.positiveAspectEn 

==== Second_positive_aspect ====
Trying to find even one positive aspect of your stressful situation is a great start. 
    -> letsSeeIfWeCanTh

= letsSeeIfWeCanTh
Let's see if we can think of one more! Think of another positive element. You can share it with me if you'd like.
  + Don't want to share
        -> itCanBeGoodToRem 
  + I don't know
    Even if you are having a hard time finding a positive aspect right now, it's possible you may find yourself thinking of one later.
    For example, have you ever told a friend to look on the bright side of some problem? Try to pretend you are that friend to yourself!
        -> Final_reassurance
  + User enters new positive aspect here:
        -> positiveAspectAp 

= positiveAspectAp
~ positiveIdea = "we are leading the creation of novel media for stress management" //append to list of positive aspect with timestamp
{positiveIdea}
{Great!|Good!|Nice work!}
    -> itCanBeGoodToRem

= itCanBeGoodToRem
It can be good to remember that you can usually find something positive even when in the most negative of situations!
    -> Final_reassurance

==== Final_reassurance ====
{Positive thinking and seeing the glass as half-full can be a good way to de-stress, making it easier to face challenges.|When you're feeling down about a situation, trying to find the positives can make it easier to handle.}
Thanks for chatting with me, {userName}. I hope this positive-thinking technique worked for you.
//go to farewell module
    -> END


//*******************************************************//    
//*******************************************************//

    
==== Second_visit ====
//system check for engagement
  + past engagement positive/neutral
        -> Second_visit_positive 
  + past engagement negative
        -> Second_visit_negative 

==== Second_visit_positive ====
//system checks if user was able to find a positive aspect
  + NO past positive aspect was found
        -> Second_visit_positive_no_idea 
  + positive aspect was found
        -> Second_visit_positive_with_idea 

==== Second_visit_positive_with_idea ====
Glad to see you again! Finding positive aspects of challenging or stressful issues seems to {suit you well!|work for you!} 
Last time you said that "{positiveIdea}" can help with "{stressor}"
//stressor is taken from Greeting module (if it exists). Add "to {stressor} only if there is a stressor.
    -> letsKeepPractici

= letsKeepPractici
Let's keep practicing!
Do you want me to guide you, or do you feel you know how to do it?
  + I know how to
        -> fantasticIWillSt 
  + Guide me
    Sure!
        -> First_positive_aspect


= fantasticIWillSt
Fantastic. I will stand by while you think of a positive aspect about your current situation. Let me know when you are done.
  + Done
  - Great!
    If you want, you can share this positive element to keep track of your progress!
    + Not now
        -> Final_reassurance
    + User enter positive element here
        -> Second_positive_aspect.positiveAspectAp


==== Second_visit_positive_no_idea ====
It's good to see you back! Finding positive elements even in negative issues is certainly an art that improves with practice.
    -> soLetsGetToIt

= soLetsGetToIt
So, let's get to it.
    -> First_positive_aspect

==== Second_visit_negative ====
//system checks if user was able to find a positive aspect
  + NO past positive aspect found
        -> Second_visit_negative_no_idea 
        
  + Past positive aspect found
        -> Second_visit_negative_with_idea 

==== Second_visit_negative_with_idea ====
It may have felt a bit awkward last time, but you did find this positive aspect: {positiveIdea}
Did you think about it a bit more after we chatted?
  + Yeah
    {Great!|Cool|Nice}
        -> Second_positive_aspect.letsSeeIfWeCanTh
  + Not really
    It's fine. 
        -> Second_visit_positive_with_idea.letsKeepPractici

==== Second_visit_negative_no_idea ====
I know last time we talked, it was not particularly easy to find a positive aspect to your situation.
Do you want to try again?
  + No, change character
    Sure, I will call one of my friends. 
    Just remember that if you ever find yourself in a situation, it can be very helpful to try to look a situation as a glass that's half full, not half empty! :)
    //system gives the user a new bot
        -> END
  + Ok, let's try again
    {Glad to hear that!|Cool!|Nice!}
        -> Second_visit_positive_no_idea.soLetsGetToIt


//*******************************************************//
//*******************************************************//


==== Third_visit ====
//system check for engagement
  + Positive/neutral engagement
        -> Third_visit_positive 
  + Negative engagement
        -> Second_visit_negative_no_idea 

==== Third_visit_positive ====
//system checks for past positive idea
  + NO past positive idea found
        -> Third_positive_no_past_idea 
  + Past positive idea found
        -> Third_positive_past_idea 

==== Third_positive_past_idea ====
Last time your had thought of this idea: "{positiveIdea}" to have a more positive view on this situation: "{stressor}"
Did it help you reduce your worry of {stressor} you out?
// {stresssor} comes from the greeting module. 
  + Yes, it did
    Good to hear! 
  + Just a little
    It's ok... as long as you have had some improvement, that means you are progressing towards a more optimistic view of the future, and developing a skill that will help you throughout life.
  + Not really
    Hum... sorry to hear that!  
    -    -> ifWePracticeMore

= ifWePracticeMore
If we practice more, you will get better at this.
    -> Third_positive_no_past_idea.doYouWantMeToGui

==== Third_positive_no_past_idea ====
Hi, welcome back! The more we practice our powers of optimistic but realistic thinking, the better we get at better managing many stressful situations.
    -> doYouWantMeToGui

= doYouWantMeToGui
Do you want me to guide you through the technique again?
  + Sure
    {Cool|Nice|OK}
        -> First_positive_aspect
  + No, I can do it.
        -> Second_visit_positive_with_idea.fantasticIWillSt 