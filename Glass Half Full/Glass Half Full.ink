//Ready for editing
// ---- Glass Half Full ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84359
# title: Glass Half Full
# author: by Pablo Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor = "am running late on many deadlines"
//these two variables below belong to a list of positiveIdeas by the user:
VAR positiveIdea1 = "we are creating a cool product"
VAR positiveIdea2 = "we are leading the creation of novel media for stress management"
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
{userName}, my name is Glass Half Full. I like using positive-thinking techniques to help my friends find relief in stressful moments.
    -> First_positive_aspect

==== First_positive_aspect ====
To start, I want you to reflect and think just one positive aspect, big or small, about your situation: "{stressor}". 
Feel free to share if you want.
  + Don't want to share
        -> noProblemLetsKee 
  + I am not sure
        -> Help_finding_positive_aspect 
  + User enters positive aspect here:
        -> positiveAspectEn 

= noProblemLetsKee
{No problem|Let's keep moving}
    -> Second_positive_aspect

= positiveAspectEn
"{positiveIdea1}" //enter in list of positive aspects with timestamp
{Very nice|Wonderful}, good start!    
    -> Second_positive_aspect

==== Help_finding_positive_aspect ====
Let's take an extra minute to reflect a bit more. Even during the darkest of times, we can find some light. 
For example, another user had this positive spin: "{listSpins_spin}" to mitigate this stressor: "{listSpins_stressor}" //PP: pick a stressor and spin from another user that belongs to the SAME CATEGORY determined in the stress_detection module (work, family issues, etc.)
When you're ready, think what could be one positive aspect about your situation. If you share with me, I could remind you when you feel down in the future.
  + Don't want to share
        -> Second_positive_aspect 
  + User enters positive aspect:
        -> First_positive_aspect.positiveAspectEn 


==== Second_positive_aspect ====
Trying to find even one positive aspect is a great start. 
    -> letsSeeIfWeCanTh

= letsSeeIfWeCanTh
Let's see if we can think of one more! Think of another positive element. Share with me if you desire.
  + Don't want to share
        -> itCanBeGoodToRem 
  + I don't know
        -> Assurance_for_later 
  + User enters new positive aspect here:
        -> positiveAspectAp 

= itCanBeGoodToRem
It can be good to remember that you can usually find something positive even when in the most negative of situations!
    -> Final_reassurance

= positiveAspectAp
"{positiveIdea2}" //append to list of positive aspect with timestamp
{Great!|Good!|Nice work!}
    -> itCanBeGoodToRem

==== Assurance_for_later ====
Even if you are having a hard time finding a positive aspect right now, it's possible you may find yourself thinking of one later.
Have you ever told a friend to look for the bright side of something? Try to pretend you are that friend to yourself!
    -> Final_reassurance

==== Final_reassurance ====
{Positive thinking and seeing the glass half full can be a good way to destress, making it easier to face challenges.|When you're feeling down about a situation, trying to find the positives can make it easier to handle.}
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
Glad to see you back! Finding positive spins to negative issues seems to {suite you well!|work for you!} 
Last time you said that "{positiveIdea1}" can help with "{stressor}"
//stressor is taken from Greeting module (if it exists). Add "to {stressor} only if there is a stressor.
    -> letsKeepPractici

= letsKeepPractici
Let's keep practicing!
Do you want me to guide you, or do you feel you know how to do it?
  + I know how to
        -> fantasticIWillSt 
  + Guide me
        -> sure 

= sure
Sure!
    -> First_positive_aspect


= fantasticIWillSt
Fantastic. I will stand-by while you think of a positive aspect about your current situation. Let me know when you are done.
  + Done
        -> great 

= great
Great!
If you want, please share your positive spin, to keep track of your progress!
  + Not now
        -> Final_reassurance
  + User enter positive spin here
        -> Second_positive_aspect.positiveAspectAp


==== Second_visit_positive_no_idea ====
Glad to see you back! Finding positive spins to negative issues is certainly an art that improves with practice.
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
It may have felt a bit awkward last time, but you did find this positive aspect: {positiveIdea1}
Did you think about it a bit more after we chatted?
  + Yeah
        -> greatCoolNice 
  + Not really
        -> itsFine 

= greatCoolNice
{Great!|Cool|Nice}
    -> Second_positive_aspect.letsSeeIfWeCanTh

= itsFine
It's fine. 
    -> Second_visit_positive_with_idea.letsKeepPractici

==== Second_visit_negative_no_idea ====
I know last time was not particularly easy to find a positive aspect.
Do you want to try again?
  + No, change character
        -> Change_bot 
  + Ok, let's try again
        -> gladToHearThatCo 

= gladToHearThatCo
{Glad to hear that!|Cool!|Nice!}
    -> Second_visit_positive_no_idea.soLetsGetToIt

==== Change_bot ====
Sure, will call one of my friends. 
Just remember if you ever find yourself in a situation try to look a situation as a glass half full! :)
//system gives the user a new bot
    -> END


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
Last time your had thought of this idea: "{positiveIdea1}" to have a more positive view on this situation: "{stressor}"
Did it help you reduce your worry of {stressor} you out?
// {stresssor} comes from the greeting module. 
  + Yes, it did
        -> goodToHear 
  + Just a little
        -> itsOkAsLongAsYou 
  + Not really
        -> humSorryToHearTh 

= goodToHear
Good to hear! 
    -> ifWePracticeMore

= itsOkAsLongAsYou
It's ok... as long as you have had some improvement, that means you are progressing towards a more optimistic view of the future.
    -> ifWePracticeMore

= humSorryToHearTh
Hum... sorry to hear that!  
    -> ifWePracticeMore

= ifWePracticeMore
If we practice more, you will get better at this.
    -> Third_positive_no_past_idea.doYouWantMeToGui

==== Third_positive_no_past_idea ====
Hi, welcome back! The more we practice our powers of optimistic realistic thinking, the better we get.
    -> doYouWantMeToGui

= doYouWantMeToGui
Do you want me to guide you through the technique again?
  + Sure
        -> coolNiceOK 
  + No, I can do it.
        -> Second_visit_positive_with_idea.fantasticIWillSt 

= coolNiceOK
{Cool|Nice|OK}
    -> First_positive_aspect

