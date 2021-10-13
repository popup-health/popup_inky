

//PopBot DoctorNo - setting boundaries
# title: NO
# author: Author: Robert Gehorsam

// Edits by David on 10/13/2021
// Edits by David on 10/12/2021


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
Hello {userName}. I’m No. 
No kidding! I realise it sounds kind of negative, but I'd love to share some ways to set boundaries in your life. It really helps reduce feelings of stress and being overwhelmed. 
It’s not always easy to do, so we’ll work on it bit by bit. Sound good?
    + Sounds like a plan!
        -> startPractice
        
    + How does this work?
        -> basicSettingBoundariesexplanation
        
= basicSettingBoundariesexplanation
Many people say yes because they don’t want to disappoint someone, or make someone mad, or because they’re interested in the offer to be involved in something, but haven’t thought through the implications on their time or skills...or even the stress it might create.

So you can have great impulses...but sometimes they can create stress later that could be avoided.
    + I see.
        -> startPractice
        
    + Sounds hard.
        -> acknowledgeHardToAvoid
        
= acknowledgeHardToAvoid
It certainly takes practice. So let's start!
    -> startPractice


= startPractice
So, recently, did you find yourself saying “Yes” to a new commitment, and then realized later that you somehow regretted making that commitment?
//DD - Here I would avoid a yes or no question.  Rather its better to just ask them to remember a situation and use very general priming language when bring it up and avoid specifics such as having said "yes" or feeling a specific emotion such as regret which may inadvertently lead the user to say no when they actually do have a situation in mind they could use to keep going.  Below is alternative language that can be used.
//DD - Can you bring to mind a situation where you ended up doing something or going along when you didn't want to?  You might have realized it wasn't right for you off the start or looking back you regret doing it.  Have you got the situation in mind?  +Yes -> recentCommitment  +No recent situation its okay to use a less recent scenario ->recentCommitment  +NEver happens -> luckyYou
    + Yes
        -> recentCommitment
        
    + Not recently
        -> recentCommitment
        
    + Never happens
        -> luckyYou
        
= recentCommitment
//FV: same language as earlier explanation, may want to reword. RG: done
//MV: Changed first sentences slightly as it felt a bit disjointed to the choice it came from. RG: accepted
Let's look at the reasons why this might have happened. 
Sometimes we want to maintain a positive relationship with someone.  
Or we're so enthused about the idea or opportunity that it just keeps us from thinking about anything that might dampen that enthusiasm. 
//  Or it might be something else altogether.
    ->recentCommitmentReason
    

=recentCommitmentReason
//MV - suggest rerouting the flow a bit. If you choose to write it, you get way less info currently. Idea: rerouting through the same flow as people not writing it down, but changing the wording a bit so it's not too obvious that the machine can not interpret what they have written.
Can you write here in a few words why you said yes to the committment? Also add why it now seems to be causing some regret or stress.
    + Yes
        -> userReasonforSayingYes
        
    + Maybe later
        -> gotoSecondQuestion
        
    + Not sure of reason
        -> gotoSecondQuestionNotSure
        
= gotoSecondQuestion
That's fine.  Now since you know the reason why you said "yes", even with some doubts, do you know why it felt hard to say no in that moment?
    + I do
        ->reasonforHardtoSayNoInMoment
    + Not sure
        -> notSureWhy

=reasonforHardtoSayNoInMoment
//MV: changed first choice as over 20 chars
Well, knowing why it was hard to say no puts you ahead of the game! Tell me more?  //FV: Maybe the answer is that it makes them nervous.  or maybe you're not taking the time.
    +Not disappoint someone
        ->notDisappoint
    +It was interesting
        -> interesting
    + Another reason
        -> another_Reason
        
= notDisappoint
// DD small typo edit, added how
Not wanting to disappoint others - or yourself - is a very human quality. In many cases we are also afraid of how others will view us. 
Ask yourself if it would have really disappointed the asker in a big way if you'd said no in a gentle and explanatory way. Often we worry much more about this than necessary. Maybe you could even ask the person about this directly?

    + I can do that!
        -> recap
        
    + Uhm...
        -> hardtonotDisappoint
        
= interesting
That is very common. It is a good impulse, don't get me wrong, in many cases it all turns out great! But sometimes there's something just below the surface that's trying to say "Wait! Are you sure?" It can be good to take a few seconds before you answer to listen to that little voice saying"Wait a second"!
    + I'll work on that!
        -> recap

=  another_Reason
OK!  Would you like to jot it down?
    + OK
        -> otherReasoninput
    + Not now
        //DD should add some reassurance here
        // That's no problem.  As long as you have it in mind!
        -> recap
    
= otherReasoninput
{otherReason}
    + That's it. 
        -> recap

= hardtonotDisappoint
//DD - alternative text suggestion
//Often getting started with saying no is most difficult at first.  It can bring up a lot of concern or nervousness at first but the more you practice the easier it gets.  Give it a shot and maybe start with a small 'no' and see how it goes!
I understand. Give it some thought. Maybe it doesn't work for everything, but taking the initiative will give you a positive boost.
    + Okay
        -> recap

= notSureWhy
//The answer will likely become clear as you experiment with saying no more often.  A good way of starting is to notice moments where you have an opportunity to say no and set a boundary and see if in those moments you can figure out why it is hard.  You don't have to say no for now as we can work on that later.  The sooner we can identify...
//DD - text modification suggestion.  The answer usually gets clear with practice and you want to be confident and encouraging with less ambiguity here.
You are definitely not alone!  The answer may come to you later, or it may stay elusive. Sometimes writing down ideas or possibilities can help. The sooner we can identify these reasons, the more likely we are to avoid these stressful situations.
    + Got it!
        -> recap

= userReasonforSayingYes
//MV - Adapted to a little wider acknowledgement than Okay
{userKnowsReasonWhy}
    + Thanks for sharing. 
    Formulating the reason is a tiny step.
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
So…..maybe talking with me isn’t the best use of your time, but that’s fine. Would you like to meet with another one of us now? FEELS A BIT PETTY?
    + Sure
        -> pre_Random_bot_selector

=pre_Random_bot_selector
I'll make the call.  You are already on your way to setting healthy boundaries. Just keep in mind that it can be hard to say no when you need to set a boundary for your time and attention. People can feel nervous about disappointing someone else, but a clear and kind explanation is the best way to go. Good luck, and see you around!
    +Thanks
        -> Random_bot_selector

= recap
//MV broke this up with a non-choice in the middle, it felt a bit repetitive so rewrote. Also, added a small change talking about acceptance as a tiny first step, to make them have more of a feeling that they have "done" something in this first pass with the Dr No bot. Currently it felt like "so what"? Leave to specialists to see if this works for them. RG: Great improvement, thanks!

The first thing to realize is that saying no is hard for most of us. It can often feel “wrong” to do.  
 
The first step is to recognize when we might not be setting healthy boundaries for ourselves.

+ How does this help?
 
Saying “yes” comes from a good place in us, but it can lead you to feel overwhelmed...and more. When you accept that it can be hard to say no in the moment, that is a second step. 
The sooner you are able to establish healthy boundaries, the more you can manage unnecessary stress.
 
 Next time, we can practice a few techniques to start getting to no. OK?
 
    ++ Great!
    -> farewell

= farewell
Go to Farewell module
    ->END
    
==== Random_bot_selector ====
{Of course|Sure|No problem}, I will call one of my {friends|pals} for you.
\\select bot at random
    -> END

==== Second_Session ====

//System check for past engagement rating
  + Past session positive or neutral
        -> Second_Session_after_positive 
  + Past session negative
        -> Second_Session_after_negative
        
= Second_Session_after_positive
So good to see you again {userName}. I'm glad you found our last talk about setting boundaries for yourself useful. 
//MV: To DEV TEAM: What we would like to do here is vary the text depending on choices made in the first session. 
//If they indicated =reasonforHardtoSayNoInMoment.notDisappoint
I remember that last time we talked, you made a commitment because you did't want to disappoint the people who asked.
//OR if user chose =reasonforHardtoSayNoInMoment.Interesting
I remember that last time we talked you made a commitmentment because it was an interesting opportunity.
//MV: OR if user chose neither
Sometimes we make commitments because we don't want disappoint people, or because we are very enthusiastic about an opportunity.
+ Yes I did
//MV: now same text for all
//DD changed the to that
We don't always realise that we might feel overwhelmed later. And then it's harder to change the situation.  
So anticipating the impact of a decision before we commit is helpful.

Did you run into one of these setting-boundary situations since we last talked?
    ++ Yes
        -> askAboutRecentBoundaryMoment
    ++ No
        -> continue

=askAboutRecentBoundaryMoment
Interesting! Can you describe what you did?
    + I said yes
        -> secondSessionPositive_HadIncidentSaidYes
    
    + I said no
        -> secondSessionPositive_HadIncidentSaidNo
    
    + No decision
        -> secondSessionPositive_HadIncidentNoDecision
        
= secondSessionPositive_HadIncidentSaidYes
OK...and did that feel like the right thing to do?
        + Yes
            -> yes_RightThing
        + I'm afraid not
            -> yes_NOT_RightThing
        + Not sure yet
            -> yes_NotSureYet
            

= yes_RightThing
Excellent! Whether it was easy to figure out or took some work, I bet it felt great afterwards.
    + It did
        -> Second_Session_recap

= yes_NOT_RightThing
I'm sorry to hear that. Any sense of what might have prevented you from setting that boundary? //FV: replace some practical tips on how to say no
    + Yes
        -> Second_session_KnowsWhyNottheRightThing
    + Not yet.
        -> yes_NotSureYet 


= yes_NotSureYet
//MV: this feels like slightly disappointing result - no steps forward - of the conversation? 
Sometimes things need time before you realize the results of a decision. It's good to just pay attention to your feelings as things go along.

    + What can I do?
    Great question.
        -> takingTime
        
= takingTime
For many people, keeping a journal of events, thoughts, and feelings can be helpful. Keep it simple.  Think of it as a way to remind yourself of issues that can otherwise get lost in the day-to-day.

The act of writing often helps us think more clearly.
    + Anything else?
You bet!
    -> askAFriend
    
= askAFriend
These kinds of boundary-setting moments are something everyone has experience with.  So if you have a good friend you can talk with about it, perhaps a conversation with them would surface these hidden issues.  

Don't be bashful!  I'm sure you'd do the same for a friend if they asked you.
    + Absolutely!
    See?  Sometimes we have more resources than we realize when it comes to tricky problems. I look forward to hearing what happens!
        -> Second_Session_recap

=secondSessionPositive_HadIncidentNoDecision
It can be good to take time before committing yourself to a new thing. Weigh up the pros and cons and how you want to present your decision to the other person. Just set a time limit for yourself so you don't overthink it.
    + I understand.
        -> Second_Session_recap


=secondSessionPositive_HadIncidentSaidNo
Well, then... even though you did say No, did you also feel a kind of tug in yourself as if part of you wanted to say Yes?  Or was it an easy decision?
    + I felt that tug
        ->wantedToSayYes
    +It was easy
        ->easyToSayNo

= wantedToSayYes
These are the moments we are looking for. And it seems like you succeeded in being aware that you needed to set a boundary. How did the other person respond?
// DD could have a block here asking why there was a tug to say yes.  Especially if they didn't know why they find it hard to say no during session 1.
// IF SessionOneDidntKnow then Last session you mentioned not being sure why it was hard to say no.  Did this recent experience give you any clues?  Take a minute to think about what was motivating that tug to say yes.
    + They understood
        -> otherPersonResponseToNo1
    + They seemed annoyed
        -> otherPersonResponseToNo2

= otherPersonResponseToNo1
Great! Generally, if you are thoughtful and clear in your explanation, people understand. Good for you! I'm sure if you were in that person's shoes, you'd be the same way.
    + I hope so!
        -> Second_Session_recap

= otherPersonResponseToNo2
// DD I would take a different tact here
// DD Sometimes the reason it is hard to say no is we are avoiding having to feel another person's negativity so I am not surprised this happened.  Despite the other person responding in this way does it feel to you that it was the right decision?  

//  Yes - Okay great.  Sometimes we have to teach others new ways of treating us by setting boundaries.  Usually the people in our lives adjust to the boundary and everything improves.  Good job and keep on praciticing as it will get easier for you and for the people on the other side of the boundary the more consistent you are!

//  No - Well sometimes we get it wrong by setting a boundary.  It is important though to remember that even if you feel it wasn't quite right just the fact that you said no when it was hard to do so is strengthening a very important muscle.  In the end the more you practice the easier it is to discern when saying no is the right thing to do so this is valuable experience!

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
    + Let's continue
        -> practiceWaiting

= practiceWaiting
Again, you are not alone! But once you can identify something, it is often easier to take an action that could feel uncomfortable...because now you know why. 

Some people like to just pause -- silently count to five, tap a ring a few times -- just to get mental space before expressing that reason.
    + Tell me more
        -> otherResponses
    + Okay
        -> Second_Session_recap
        
= otherResponses
Sometimes a reason you want to set a boundary is just too sensitive to share. As long as you know your reason, being vague or diplomatic is completely acceptable.  Examples of that are just saying "It's not the right thing for me now" or "Thanks for the opportunity, but I ..." 
    + Thanks.
        -> Second_Session_recap

= Second_Session_after_negative
// FV: interogate user about what didn't work last time.  also add tips.  and pursue the "what would you tell a friend"
It seems that our last chat didn't work as well as you might have liked to help you set healthy boundaries. Was there anything in particular that didn't work for you?
    + Tried but didn't work
        -> needForPractice
    + Something else
        -> inputReasonforNegativeAssessment
    + It's not for me
        -> First_Session.pre_Random_bot_selector
    

= needForPractice
I understand.  Setting boundaries is something that requires real practice.  Sometimes it helps to look at it from a different perspective.
    + Like what?
        -> tell_A_Friend1

=   inputReasonforNegativeAssessment  
user types in a brief reason
    -> acknowledgeNegativeReason
    

= tell_A_Friend1
//MV - what if user wants to say no?  RG: I debated that.  I don't know what I'd say to someone who replied to no to this!  
Have you ever seen a friend struggle with boundaries -- well, any problem, really -- and given them advice about how to say no?  But the same advice is hard for you to do for yourself?
    + Of course
        -> tell_A_Friend2
    + Sometimes
        -> tell_A_Friend2
    + I never do that.
        -> tell_A_Friend3
        
= tell_A_Friend2
So imagine that you are your own best friend, giving yourself the very best advice about this that you would give to them.

Sometimes the first experience simply surfaces your internal arguments and doesn't change your actions.  But keep going and in time you'll see the value of being your own best friend. It will even help you help others better!
    + I'll keep trying
        -> Second_Session_recap

= tell_A_Friend3
Even if you don't, try to imagine or remember a fictional character in this kind of situation, and think of what you might say to them.  
    + Okay
Sometimes the first experience simply surfaces your internal arguments and doesn't change your actions.  But keep going and in time you'll see the value of being your own best friend. It will even help you help others better!
    -> Second_Session_recap
    

= acknowledgeNegativeReason
Thank you. It's helpful to hear this. My fellow Inklings and I will learn from it. 

We can continue to learn more about setting boundaries, or if you'd like to talk with a pal of mine, we can do that.
    + Let's continue
        -> needForPractice
    
    + Talk to someone else
        -> Random_bot_selector
        
    + Done for now
        -> Second_Session_recap
        
    

= continue
Ok! Perhaps you'd like to talk with one of my pals.
    + sure
        -> First_Session.pre_Random_bot_selector 
    + Not now
        -> farewell

= Second_Session_recap
// include tips on how to say no
It's good to see you becoming aware of some of the important aspects about setting boundaries, whether it involves work, relationships, or something else.  

It's also good to acknowledge that awareness is just one step. Learning how to take actions that sometimes feel difficult takes practice.  

One thing that can help in the moment is giving yourself a bit of space and time before committing. Little techniques like counting to five or ten before answering can have a big impact.

Keep at it!  You are developing skills that will help you feel less stressed and even create healthy relationships in work and your personal life.  
See you soon!

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
    + Yes
        -> probeConfidence
    + Getting there
        -> probeConfidence
    + Not yet
        -> reassure
        
= probeConfidence 
Nice!  We've talked before about two things in particular.  

One is recognizing the reasons why it's sometimes hard to say no even though you feel a tug to do so.  Our natural desires not to disapppoint, or pursue an interesting opportunity, can sometimes have us make choices that leave us feeling stressed later.
    + yes
        -> inTheMoment

=inTheMoment
The second is recognizing in the moment that you might not be setting a healthy boundary. It's ok to take a moment -- or more! -- to check in with yourself before making a decision. 
    + For sure.
        -> oneMoreThing
        
= oneMoreThing
Oh, and one more thing. We sometimes are hesitant to say no because we worry that the other person will be angry with us. Explaining your decision to say No in a clear and calm way can be very helpful. //DD But also understanding that the other person may be angry no matter how calm we are that its still okay to say no.

So, with that in mind, is there anything specific boosting your confidence?

    + Identifying problems
        -> identifyingProblems
    + Being in the moment
        -> beingInTheMoment
    + Clear responses
        -> clearResponse
        
= identifyingProblems
That's terrific. And the more you can do that in the moment, the better it will get. You can even anticipate them in the future!
    + Great.
        -> pre_Recap_Rapport

= reassure
Not to worry! This is a lifelong process of practice, and it doesn't happen all at once. 

Would you like to review what we've talked about up to now?
    + sure
        -> First_Session.startPractice

= pre_Recap_Rapport
You are really developing what we call coping skills for managing everyday stress. We Inklings can't solve everything for people, but we are here to help you learn how to identify and anticipate events in your life that can be stressful.  

There are lots more Inklings out here.  I hope you run into them soon! Some might even help you with some of the ideas here.  For example my pal Puffy can teach you some simple breathing techniques that are useful for those difficult "in-the-moment" moments!
    +Great!
        -> thirdsession_Recap

= beingInTheMoment
Amazing! I think you will start to notice less stress and more satisfaction with your choices.
    -> thirdsession_Recap

= clearResponse
That's a big step and a great skill to master! Keep practicing it and I bet you'll see changes over time in your life. 
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
We have come a long way! Learning to set boundaries in your life has many benefits.  It can reduce our stress, and that lets us accomplish more and be happier. 

Even beyond our chat, there are great resources.  One article I find helpful is this one:

<a target="_blank" rel="noopener noreferrer" href="http:https://psychcentral.com/lib/learning-to-say-no">Link</a>

Best of luck!

    -> farewell
    

//RG: need more here
        
// Random_bot_selector
{Of course|Sure|No problem}, I will call one of my {colleagues|friends|pals}.
\\select bot at random
    -> END
    
= farewell
Bye!
    +See you!
//go to Farewell module
    -> END







