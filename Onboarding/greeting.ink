//different greetings based on previous visits of user

===greeting1
<strong>Flecta: Hi! I'm Flecta. How's your day been so far?
 +Great! You?
    <strong>Flecta: Couldn't be better! We're happy you're here.
    
 +Kind of OK
    <strong>Flecta: That doesn't sound convincing. Hope we can help you today.
    ++Thanks
 +Ugh
    <strong>Flecta: That bad huh? Hope we can help you today.
    ++Sounds Good
    
    - <strong>Flecta: And here's my co-host Tianco.
    [TIANCO AND FLECTA ANIMATION]
    ->TiancoIntro    

==TiancoIntro
++What do you do?
    ~userNoBanter = 1
        <strong>Flecta: In short, we are<> ->WhatweDo
++Hi Tianco!
Tianco: Hi there! Can't wait to tell you all about us!
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
Tianco: {~You really liked|Seems like you enjoyed your time with|You had a good experience with} BOTNAME, right? They're one of my favourites.
<strong>Flecta: Tell me. Last time, you said you were stressed about CATEGORY. Are you feeling better about that?
    +No
        <strong>Flecta: Oh no, still not OK? Let's get you some help quick.
        <strong>Flecta: Now, let's see, who would be good to talk to today... Tianco?
        Tianco: Oh, you're asking me? I know just the one! BOTNAME!
            ++Sounds good
            USER IS SENT OFF TO BOT.
            ->EvaluateBot
            
            ++Don't want to talk
                Tianco: That happens to everyone sometimes (not often to me, though!)
                <strong>Flecta: Maybe next time.
            ->HowToReconnect
    +Yes
        <strong>Flecta: That really makes me happy.
        Tianco: Yet you are here.
        <strong> Flecta: Good point, Tianco. 
        Tianco: We can connect you with a micro-coach again! 
        
        ++That would be great
            Tianco: Let's do it!
        ->AssignNextBot
        
        ++Not this time
            <strong>Flecta: No problem!
            ->HowToReconnect
            
===NegativeXP
Tianco: BOTNAME said it didn't go so well. They were a bit sad, but totally understand. 
<strong>Flecta: They have offered to try again! What do you think?
    +No Thanks
    Flecta: That's all right. Let us discuss who might be a better fit. One moment ...
    Tianco: Always learning to do better!
        ->AssignNextBot
    +Okay
        USER SENT ON NEW SESSION WITH PREVIOUS BOT
        ->END

===greeting3

Tianco: {username}!! Back for more. Can't miss us? Likewise! We love to have you around too.
<strong>Flecta: No matter how long or how short the time in between your visits. {~Always a pleasure to see you.|Welcome back!|Always really nice to see you again.} 

->DiscussBotSession

