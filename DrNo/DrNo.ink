//PopBot DoctorNo - setting boundaries
# title: Hero
# author: Author: Robert Gehorsam



VAR userName = "Robert"
VAR boundaryTechniques = "tapping a piece of jewelry a few times, silently counting to ten"
VAR userKnowsReasonWhy = " They really needed my help, Didn't want to disappoint"
VAR diplomaticAnswers = "It's just not for me now, I don't think I really have the time to do it well, I'm sorry but I'll have to pass"
VAR otherReason = "Liked the opportunity, I felt I owed them a favor"


-> Session_Check


==== Session_Check ====
//System check for current session
  + First Session
        -> First_Session
  + Second Session
        -> Second_Session 
  + Third Session
        -> Third_Session 
        
==== First_Session ====
Hello {userName}. I’m No. No kidding! That might sound kind of negative, but really, what I would love to share with you are ways to set boundaries in your life to reduce feelings of stress and being overwhelmed. It’s not always easy to do, so we’ll work on it bit by bit. Sound good?
    + Sounds like a plan!
        -> startPractice
        
    + How does this work?
        -> basicSettingBoundariesexplanation
        
= basicSettingBoundariesexplanation
Many people say yes because they don’t want to disappoint someone, or make someone mad, or because they’re interested in the offer but haven’t thought through the implications on their time or skills.

So you can have great impulses...but sometimes they can create stress later that could be avoided.
    + I see.
        -> startPractice
        
    + Sounds hard.
        -> acknowledgeHardToAvoid
        
= acknowledgeHardToAvoid
Absolutely. It takes practice. So let's start!
    -> startPractice


= startPractice
Recently have you found yourself voluntarily saying “Yes” to a new commitment and then realized later you had some regret about doing that, but couldn’t back out?
    + Yes
        -> recentCommitment
        
    + Not recently
        -> recentCommitment
        
    + Nope
        -> luckyYou
        
= recentCommitment
//FV: same language as earlier explanation, may want to reword. RG: done
Often the reasons are just below our awareness in that moment and very much about maintaining a positive relationship with someone. 

And sometimes we're so enthused about the idea or opportunity it just keeps us from thinking about anything else.

In a word or two can you jot down why you said yes, but it now seems to be causing some regret or stress?
    + yes
        -> userReasonforSayingYes
        
    + Not now
        -> gotoSecondQuestion
        
    + Not sure
        -> gotoSecondQuestionNotSure
        
= gotoSecondQuestion
Since you know the reason, do you have an idea why it’s hard to say no in the moment
    + I do
        ->reasonforHardtoSayNoInMoment
    + Not sure
        -> notSureWhy

=reasonforHardtoSayNoInMoment
Well, that puts you ahead of the game! Can you elaborate?  //FV: Maybe the answer is that it makes them nervous.  or maybe you're not taking the time.
    +Didn't want to disappoint
        ->notDisappoint
    +It was interesting
        -> interesting
    + Another reason
        -> another_Reason
        
= notDisappoint
Not wanting to disappoint is one of the most human qualities of all. Perhaps ask yourself if it would have really disappointed that person in a big way if you'd said no in a gentle, explanatory way.

Many times our worries about this are far greater than the reality. You might consider asking the person about this directly.

    + I can do that!
        -> recap
        
    + uhhhh....
        -> hardtonotDisappoint
        
= interesting
Many people have that experience. It is a good impulse, and don't get me wrong, many times it all turns out great! But sometimes there's a little voice in our heads that's trying to say "Are you sure?" It can be good to take a few seconds before answering to see if you can identify that.
    + I'll work on that!
        -> recap

=  another_Reason
OK!  Would you like to jot it down?
    + OK
        -> otherReasoninput
    + Not now
        -> recap
    
= otherReasoninput
{otherReason}
    + That's it. 
        -> recap

= hardtonotDisappoint
I understand. Give it some thought. Maybe it’s not for every occasion, but taking the initiative will give you a positive boost.
    + Okay
        -> recap

= notSureWhy
You are definitely not alone!  The answer may come to you later, or it may stay elusive. Sometimes writing down ideas or possibilities can help. The sooner we can identify these reasons, the more likely we are to avoid these stressful situations.
    + Got it!
        -> recap

= userReasonforSayingYes
{userKnowsReasonWhy}
    + Okay
        -> recap
    

= gotoSecondQuestionNotSure
That's fine! Do you want some more time to think about it, or keep going?
    + Keep thinking
        -> moreTime
    + Keep going
        -> gotoSecondQuestion_resolve_NotSure
        
= gotoSecondQuestion_resolve_NotSure
Since you know the reason, do you have an idea why it’s hard to say no in the moment
    + I do
        ->reasonforHardtoSayNoInMoment
    + Not sure
        -> notSureWhy
        
= moreTime
Let me know if you have an idea, or want to keep thinking about it.
    + A bit more time
        -> moreTime
    + Keep going!
        -> gotoSecondQuestion

= luckyYou
So…..maybe talking with me isn’t the best use of your time, but that’s fine. Would you like to meet with another one of us now?
    + Sure
        -> Random_bot_selector

= recap

The first thing to realize is that saying no is hard for most of us, and it can often feel “wrong” to do. 
 
But we should recognize when we might not be setting healthy boundaries.  
 
Finally for now:  Recognize it can be hard to say no in the moment. Saying “yes” comes from a good place in us but it can lead you to feel overwhelmed...and more. 
 
 Next time, we can practice a few techniques to start getting to no. OK?
 
 + Great!
    -> farewell

= farewell
Go to Farewell module
    ->END
    
==== Random_bot_selector ====
{Of course|Sure|No problem}, I will call one of my {colleagues|friends|pals}.
\\select bot at random
    -> END

==== Second_Session ====

//System check for past engagement rating
  + Past session positive or neutral
        -> Second_Session_after_positive 
  + Past session negative
        -> Second_Session_after_negative
        
= Second_Session_after_positive
So good to see you again {userName}. I'm glad you found our last talk useful. Did you run into one of these situations since we last talked?
    + Yes.
        -> askAboutRecentBoundaryMoment
    + No.
        -> continue

=askAboutRecentBoundaryMoment
Interesting!  So, can you describe how it went?
    + Said yes.
        -> secondSessionPositive_HadIncidentSaidYes
    
    + Said no.
        -> secondSessionPositive_HadIncidentSaidNo
    
    + Not now.
        -> secondSessionPositive_HadIncidentSaidYes
        
= secondSessionPositive_HadIncidentSaidYes
OK...and did that feel like the right thing to do?
        + Yes
            -> yes_RightThing
        + I'm afraid not.
            -> yes_NOT_RightThing
        + Not sure yet.
            -> yes_NotSureYet
            

= yes_RightThing
Excellent! Whether it was easy to figure out or took some work, I bet it felt great.
    + Yes.
        -> Second_Session_recap

= yes_NOT_RightThing
I'm sorry to hear that. Any sense of what might have prevented you from setting that boundary? //FV: replace some practical tips on how to say no
    + yes
        -> Second_session_KnowsWhyNottheRightThing
    + Not yet.
        -> yes_NotSureYet 


= yes_NotSureYet
Sometimes things need time before you realize the results of a decision. It's good to just pay attention to your feelings as things go along. Next time we chat perhaps you'll have a clearer picture! I hope it works out!
    + OK 
        -> Second_Session_recap

=secondSessionPositive_HadIncidentSaidNo
Did you feel like you wanted to say yes?  Or was it an easy decision?
    +Wanted to say yes
        ->wantedToSayYes
    +It was easy
        ->easyToSayNo

= wantedToSayYes
These are the moments we are looking for. And it seems like you succeeded in being aware that you needed to set a boundary. How did the other person respond?
    + They understood
        -> otherPersonResponseToNo1
    + They seemed annoyed
        -> otherPersonResponseToNo2

= otherPersonResponseToNo1
Great! Generally, if you are thoughtful and clear in your explanation, people understand. Good for you! I'm sure if you were in that person's shoes, you'd be the same way.
    + I hope so!
        -> Second_Session_recap

= otherPersonResponseToNo2
I'm sorry to hear it. That's not always in your control. But giving clear reasons why you're setting this boundary is in your control, and knowing you've done the best you can is...well...doing the best you can!

The more you practice, the better you become at this.
    + I know
        -> Second_Session_recap

= easyToSayNo
That's a good sign.  Maybe it wasn't such a complicated situation after all.  Or maybe our previous chat helped you out!
    + Maybe!
        -> Second_Session_recap
    
= Second_session_KnowsWhyNottheRightThing
Good. Do you want to jot it down here?
    + User enters reason 
        -> userReasonforSayingYes
    + Not now
        -> userReasonforSayingYes
        
= userReasonforSayingYes
{userKnowsReasonWhy}
    + let's continue
        -> practiceWaiting

= practiceWaiting
Again, you are not alone! But once you can identify something, it is often easier to take an action that could feel uncomfortable...because now you know why. 

Some people like to just pause -- silently count to five, tap a ring a few times -- just to get mental space before expressing that reason.
    + More?
        -> otherResponses
    + Okay
        -> Second_Session_recap
        
= otherResponses
Sometimes a reason you want to set a boundary is just too sensitive to share. As long as you know your reason, being vague or diplomatic is completely acceptable.  Examples of that might include  {diplomaticAnswers}
    + Thanks.
        -> Second_Session_recap

= Second_Session_after_negative
// FV: interogate user about what didn't work last time.  also add tips.  and pursue the "what would you tell a friend"
It seems that our last chat wasn't as rewarding as you might have liked. Anything in particular?
    + Tried ideas but didn't work
        -> needForPractice
    + Something else
        -> inputReasonforNegativeAssessment
    + Just not for me
        -> Random_bot_selector

= needForPractice
I understand.  It is often something that requires real practice.  Sometimes it helps to look at it from a different perspective.
    + Like what?
        -> tell_A_Friend1

=   inputReasonforNegativeAssessment  
user types in a brief reason
    -> acknowledgeNegativeReason
    

= tell_A_Friend1
Have you often found that the advice you give a friend is something that is hard for you to do for yourself?
    + of course
        -> tell_A_Friend2
    + sometimes
        -> tell_A_Friend2
        
= tell_A_Friend2
So imagine that you are your own best friend, giving yourself the very best advice about this that you would give to them.

Sometimes the first experience simply surfaces your internal arguments and doesn't change your actions.  But keep going, in time, you'll see the value of being your own best friend. It will even help you help others better!
    + I'll keep trying
        -> Second_Session_recap

= acknowledgeNegativeReason
Thank you. It's helpful to hear this and my Inklings and I will learn from it. We can continue, or if you'd like to talk with a pal, we can do that.
    + Let's continue
    -> needForPractice
    
    + Talk to someone else
        -> Random_bot_selector
        
    + Done for now
        -> Second_Session_recap
        
    

= continue
Ok! Perhaps you'd like to talk with one of my pals.
    + sure
        -> Random_bot_selector
    + Not now
        -> farewell

= Second_Session_recap
// include tips on how to say no
It's good to see you becoming aware of some of the important aspects about setting boundaries, whether it involves work, relationships, or something else.  

It's also good to acknowledge that awareness is just one step, but learning how to take actions that sometimes feel difficult takes practice.  One thing that can help in the moment is giving yourself a bit of space and time before committing.  Little techniques like {boundaryTechniques} can have a big impact.

Keep at it!  You are developing some skills that will help you feel less stressed and even create healthy relationships in work and your personal life.  See you soon!

    + Thanks
        -> farewell
        
= farewell
Bye!
//go to Farewell module
-> DONE


==== Third_Session ====

//System check for past engagement rating
  + Past session positive or neutral
        -> Third_Session_after_positive 
  + Past session negative
        -> Third_Session_after_negative

//FV:  third session integrates first two, including asking user if they used any of the tips and how it turned out.  Especially: recommendation to take time comes in handy here.

= Third_Session_after_positive
Hi, {userName}, I can see that this has been helpful so far. Do you feel more confident about setting boundaries?
    + yes
        -> probeConfidence
    + Getting there
        -> probeConfidence
    + Not yet
        -> reassure
        
= probeConfidence 
Nice!  Anything specific?
    + Identifying problems
        -> identifyingProblems
    + Being in the moment
        -> beingInTheMoment
    + Not sure yet
        -> reassure
        
= identifyingProblems
That's terrific. And the more you can do that in the moment, the better it will get. You can even anticipate them in the future!
    + Great.
        -> thirdsession_Recap

= beingInTheMoment
Amazing! I think you will start to notice less stress and more satisfaction with your choices.
    -> thirdsession_Recap

= reassure
That's ok. It's a lifelong process. There are old habits to undo and new habits to learn.  Be kind to yourself.  
    -> thirdsession_Recap

= Third_Session_after_negative
{userName}, the last time we met didn't seem to be helpful for you, so let's think about what's next.
    + Not for me
        -> thirdSession_Bot_Selector
    + Let's try again.
        -> Refresher
        
= Refresher
That never hurts. So we can start at the beginning!
    + OK 
        -> First_Session.startPractice

        
= thirdSession_Bot_Selector
Let's see if another one of my pals can help.
    + OK 
        -> Random_bot_selector
        
    + Not now
        -> farewell
        
= thirdsession_Recap
We have come a long way! Developing the ability to set boundaries in our lives has many benefits.  We can reduce our stress, and that lets us accomplish more and be happier. 
    -> farewell
    

//RG: need more here
        
// Random_bot_selector
{Of course|Sure|No problem}, I will call one of my {colleagues|friends|pals}.
\\select bot at random
    -> END
    
= farewell
Bye!
//go to Farewell module
-> END







