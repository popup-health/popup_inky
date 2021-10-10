// Locked by PP 

// ---- Glass Half Full ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/84359
# title: Glass Half Full
# author: by Pablo Paredes
// -----------------------------

VAR userName = "Pablo"
VAR stressor = "am running late on many deadlines"
VAR positiveIdea = "we are creating a cool set of characters"

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

==== First_visit ====
{userName}, my name is Glass Half Full. I am an expert in using positive-thinking techniques to help my friends find relief in stressful moments.
    -> First_positive_aspect

==== First_positive_aspect ====
To start, I want you to reflect and think just one positive aspect, big or small, about your situation. Feel free to share if you want.
  + Don't want to share
        -> noProblemLetsKee 
  + I am not sure
        -> Help_finding_positive_aspect 
  + User enters positive aspect here
        -> positiveAspectEn 

= noProblemLetsKee
{No problem|Let's keep moving}
    -> Second_positive_aspect

= positiveAspectEn
{positiveIdea} //enter in list of positive aspects with timestamp
    -> Second_positive_aspect

==== Help_finding_positive_aspect ====
Let's take a few more minutes and reflect a bit more. Even during the darkest of times, we can find some light. 
When you're ready, think what could be one positive aspect about your situation. If you share with me, I could remind you when you feel down in the future.
  + Let's just move on
        -> Second_positive_aspect 
  + Not working for me
        -> Extra_time 
  + User enters positive aspect
        -> Second_positive_aspect 

==== Extra_time ====
I am sorry this is not working. Perhaps if you take a few more minutes it may work?
  + No, I want another bot
        -> Get_another_bot 
  + Ok, will think a bit more
        -> coolTakeYourTime 
  + No, let's just end it
        -> Assurance_for_later 

= coolTakeYourTime
Cool, take your time, and let me know when done.
  + Done
        -> coolDidItWorkIfY 

= coolDidItWorkIfY
Cool, did it work? If you got a positive aspect, enter it below if you want.
  + Don't want to share
        -> Second_positive_aspect 
  + I just didn't work.
        -> okDoYouWantAnoth 
  + User enters positive aspect here
        -> Second_positive_aspect.positiveAspectAp 

= okDoYouWantAnoth
Ok, do you want another bot?
  + Give me another bot
        -> Get_another_bot 
  + Let's just end it
        -> Assurance_for_later 

==== Get_another_bot ====
Sure, will call one of my friends.
//pick a bot at random
    -> END

==== Second_positive_aspect ====
Trying to find even one positive aspect is a great start. 
    -> letsSeeIfWeCanTh

= letsSeeIfWeCanTh
Let's see if we can think of one more! Think of another possible positive element. Share with me if you desire.
  + Don't want to share
        -> itCanBeGoodToRem 
  + I don't know
        -> Assurance_for_later 
  + This is not working
        -> itsOk 
  + User enters new positive aspect here
        -> positiveAspectAp 

= itCanBeGoodToRem
It can be good to remember that you can usually find something positive even when in the most negative of situations!
    -> Final_reassurance

= itsOk
It's ok.
    -> Assurance_for_later

= positiveAspectAp
{positiveIdea} //append to list of positive aspect with timestamp
    -> itCanBeGoodToRem

==== Assurance_for_later ====
Even if you are having a hard time finding a positive aspect right now, it's possible you may find yourself thinking of one later.
    -> Final_reassurance

==== Final_reassurance ====
{Positive thinking and seeing the glass half full can be a good way to destress, making it easier to face challenges.|When you're feeling down about a situation, trying to find the positives can make it easier to handle.}
Thanks for chatting with me, {userName}. I hope this positive-thinking technique worked for you.
//go to farewell module
    -> END

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
Last time you said that "{positiveIdea}" can help with "{stressor}"
//stressor is taken from Greeting module (if it exists). Add "to {stressor} only if there is a stressor.
    -> letsKeepPractici

= letsKeepPractici
Let's keep practicing!
Do you want me to guide you, or do you feel you know how to do it?
  + I know how to
        -> Third_positive_no_past_idea.fantasticIWillSt 
  + Guide me
        -> sure 

= sure
Sure!
    -> First_positive_aspect

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
It may have felt a bit awkward last time, but you did find this positive aspect: {positiveIdea}
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
Do you want to tray again?
  + No, change character
        -> Change_bot 
  + Ok, let's try again
        -> gladToHearThatCo 

= gladToHearThatCo
{Glad to hear that!|Cool!|Nice!}
    -> Second_visit_positive_no_idea.soLetsGetToIt

==== Change_bot ====
Sure, I will call one of my friends.
//system gives the user a new bot
    -> END

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
        -> fantasticIWillSt 

= coolNiceOK
{Cool|Nice|OK}
    -> First_positive_aspect

= fantasticIWillSt
Fantastic. I will stand-by while you think of a positive aspect about your current situation. Let me know when you are done.
  + Done
        -> great 

= great
Great!
    -> Final_reassurance
