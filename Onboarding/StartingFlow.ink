INCLUDE onboardingv4.ink
INCLUDE StressID
INCLUDE farewell.ink

//BLOCKED MIRANDA

VAR username = "Miranda"
VAR stressLevel = 0
VAR stressOngoing = 0
VAR stressLength = 0
VAR userStressInput = "I have started too late on my assignment and I'm scared I will fail."

->UserVisitNumber

===UserVisitNumber
//for testing of flow

+user visit 1
->greeting1
+user visit 2
->greeting2
+user visit 3
->greeting3



===greeting1
<strong>Flecta: Hi! Great to meet you. My name is Flecta. Part of the welcoming committee. How's your day been so far?
 +Good, thanks. You?
    <strong>Flecta: Couldn't be better! Now, let me introduce Tianco to you.
 +Kind of OK, I guess
    <strong>Flecta: Ow, that doesn't sound convincing. Let's chat about it later. First, let me introduce Tianco to you.
 +Don't get me started
    <strong>Flecta: Sorry to hear that. Let's talk about it, yeah? First, I'll introduce Tianco to you.
- ->TiancoIntro    

==TiancoIntro
Tianco: Hi. I'm so happy to meet you. Can't wait to tell you all about us!
<strong>Flecta: All in good time, Tianco. I'm sure our visitor has questions for us.
->StartOnboarding


===greeting2

+User back after hours or next day
<strong>Flecta: {~Delighted to see you again so soon!|You're back! Great to see you.}

Flecta: More importantly, did your session help? I wonder because you're back so soon.
->DiscussBotSession


+User back after few days
<strong>Flecta: Good to see you again.{~ It's been a few days|Happy you're back.|}
+User back after more than week
<strong>Flecta: So glad you made it back to us!{~ We were worried.|Everyone was asking about you}  
- ->END

==DiscussBotSession
+ User gave bot session positive feedback
Tianco: You really liked XYZ, you said. I get that - they're so cool!
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

+User back after hours
<strong>Flecta: {~Delighted to see you again so soon!|You're back! I'm very pleased} 
->END