INCLUDE onboardingv4.ink
INCLUDE StressID
INCLUDE farewell.ink


//BLOCKED MIRANDA

VAR username = "Miranda"
VAR stressLevel = 0
VAR stressOngoing = 0
VAR stressLength = 0
VAR userStressInput = "I have started too late on my assignment and I'm scared I will fail."
VAR userNoBanter = 0

->UserVisitNumber

===UserVisitNumber
//for testing of flow

+user visit 1 (onboarding sequence)
->greeting1
+user visit 2 (1st session after onboarding session)
->greeting2
+user visit 3 (2nd session after onboarding session)
->greeting3



===greeting1
<strong>Flecta: Hi! My name is Flecta. Good to meet you. How's your day been so far?
 +Good, thanks. You?
    <strong>Flecta: Couldn't be better! Let me introduce Tianco to you.
 +Kind of OK, I guess
    <strong>Flecta: Ow, that doesn't sound convincing. Let's chat about it soon.
    ++Thanks
    <strong>Flecta: My friend Tianco is here too.
 +Don't get me started
    <strong>Flecta: Sorry to hear that. Let's try to help you today, right?
    ++Sounds Good
    <strong>My friend Tianco is here too.
    
    - ->TiancoIntro    

==TiancoIntro
++Just tell me what you do
    ~userNoBanter = 1
        <strong>Flecta: Of course. In a nutshell, we are<> ->WhatweDo
++Hi Tianco!
Tianco: Hi. I'm so happy to meet you. Can't wait to tell you all about us!
<strong>Flecta: All in good time, Tianco. 
->StartOnboarding


===greeting2

+User back after hours or next day
<strong>Flecta: Welcome back {username}! {~Delighted|Great|Wonderful} to see you again so soon!

Flecta: More importantly, did your session help? I wonder because you're back so soon.
->DiscussBotSession


+User back after few days
<strong>Flecta: Good to see you again.{~ It's been a few days|Happy you're back.|}
+User back after more than week
<strong>Flecta: So glad you made it back to us!{~ Tianco|Everyone} was asking about you.  
- ->END

==DiscussBotSession
+ User gave bot session positive feedback
Tianco: You really liked XYZ, right? I get that - they're so cool!
Flecta: When you were here last, you said you were stressed about CATEGORY. Are you still stressed about this?
    ++Yes
        Flecta: I'm so sorry. Shall we introduce you to someone else to try and work things through?
            +++I'd love that
            NEW BOT IS CHOSEN
            ->END
            +++Not now thanks
                ->LeaveOrStay
    ++No
        Flecta: That really makes me happy.
        ->LeaveOrStay
+ User gave bot session negative feedback
Tianco: XYZ said it didn't go so well. They were a bit sad, but totally understand. 
Tianco: They have offered to try again! what do you think?
    ++No Thanks
    Flecta: That's all right. Let us discuss who might be a better fit. One moment ...
        NEW BOT IS CHOSEN
            ->END
    ++Okay
        USER SENT ON NEW SESSION WITH PREVIOUS
        ->END


===greeting3

{username}!! Back for more - can't miss us? We love to have you around too. 
->END