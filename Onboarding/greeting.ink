//different greetings based on previous visits of user

===greeting1
<strong>Flecta: Hi! My name is Flecta. Good to meet you. How's your day been so far?
 +Good, thanks. You?
    <strong>Flecta: Couldn't be better! My micro-coach friends and I are so happy you're here.
    
 +Kind of OK, I guess
    <strong>Flecta: Ow, that doesn't sound convincing. I have some micro-coach friends who could help you with that.
    ++Thanks
 +Don't get me started
    <strong>Flecta: That bad huh? I have some micro-coach friends who could help you with that.
    ++Sounds Good
    
    - <strong>Flecta: And this is Tianco!
    ->TiancoIntro    

==TiancoIntro
++Just explain please
    ~userNoBanter = 1
        <strong>Flecta: Of course. In short, we are<> ->WhatweDo
++Hi Tianco!
Tianco: Hi. I'm so happy to meet you. Can't wait to tell you all about us!
<strong>Flecta: All in good time, Tianco. 
->StartOnboarding


===greeting2

+User back after hours or next day
<strong>Flecta: Welcome back {username}! {~Delighted|Great|Wonderful} to see you again so soon!
Tianco: So, what's happening?
->DiscussBotSession


+User back after few days
<strong>Flecta: Hey {username}! <>
<>{~ It's been a few days.| Happy you're back.|}
+User back after more than week
<strong>Flecta: So glad you made it back to us!{~ Tianco|Everyone} was asking about you.  
- ->DiscussBotSession

==DiscussBotSession
+ User gave previous bot session positive feedback
->PositiveXP

+ User gave bot session negative feedback
->NegativeXP
        
===PositiveXP
Tianco: You really liked BOTNAME last time, right? Totally get that!
Flecta: When you were here before, you said you were stressed about CATEGORY. Are you still stressed about that?
    +Yes
        <strong>Flecta: Oh no, still? Let's get you some help quick.
        <strong>Flecta: Now, let's see, who would be good to talk to today... Tianco?
        Tianco: Oh, you're asking me? I know just the one! BOTNAME!
            ++Sounds good
            USER IS SENT OFF TO BOT.
            ->EvaluateBot
            
            ++Don't want to talk
                Tianco: That happens to everyone sometimes (not often to me, though!)
                <strong>Flecta: Maybe next time.
            ->HowToReconnect
    +No
        <strong>Flecta: That really makes me happy.
        Tianco: Yet you are here.
        <strong> Flecta: Good point, Tianco. 
        WE NEED FOLLOW UP QUESTIONS HERE? NEW USER INPUT MAYBE?
        Tianco: We can connect you with a micro-coach again! 
        
        ++That would be great
            Tianco: Let's do it!
        ->AssignNextBot
        
        ++Not this time
            <strong>Flecta: No problem!
            ->HowToReconnect
            
===NegativeXP
Tianco: BOTNAME said it didn't go so well. They were a bit sad, but totally understand. 
Tianco: They have offered to try again! What do you think?
    +No Thanks
    Flecta: That's all right. Let us discuss who might be a better fit. One moment ...
    Tianco: Always learning to do better!
        ->AssignNextBot
    +Okay
        USER SENT ON NEW SESSION WITH PREVIOUS BOT
        ->END

===greeting3

Tianco: {username}!! Back for more, huh? Can't miss us? We love to have you around too.
<strong>Flecta: 


->END