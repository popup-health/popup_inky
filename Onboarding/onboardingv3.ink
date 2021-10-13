//MIRANDA LOCKED
VAR username = "Miranda"

+Hi
->Start

===Start

<strong>Flecter: Hey {username}! My name is Flecter. Welcome to Pop-up!
Tianco: And I'm Tianco. Can't wait to tell you everything about us. Did you know...
<strong>Flecter: All in good time, Tianco.

+Just tell me
    <strong>Flecter: Essentially, we at Pop-up are all here to help you learn to deal with stress.  
    ++All? More creatures?
+Interesting names...
    <strong>Flecter: Thank you. We've all got names that kind of reflect why we are here. iF you're a bit of a puzzle person it can be fun to make them out.
    ++All? More creatures? 
    ++Intriguing!
- Tianco: Can I tell more about the others, Flecter? Please?
    
- ->WeAreABotWorld

===WeAreABotWorld
<strong>Flecter: Oh well. Go ahead then, young one.
+ Very curious!
Tianco: There's many of us and we all want to make you feel better about stressy stuff.
<strong>Flecter: (sigh) What he means is that we're created and trained to help you cope with everyday challenges. Each of us is specialised in a technique to help you feel better in your own head.
    
Tianco: Isn't that what I said? but in easy words?
<strong>Flecter: Kind of. We support you in reflecting on every day challenges and in taking actions to iron them out.

    ++You solve my problems?
    ++What techniques?

- ->warning


===warning
<strong>Flecter: Before we continue, let's me clarify a very important thing. 
We're not trained to get you through serious mental health challenges or situations.
    +Got that
    Tianco: And for emergencies, call 911.
    <strong> Flecter: Exactly, Tianco, well said.These situations are ... let's call it "above our paygrade"
    Tianco: And we don't even get paid! But in all your everyday challenges, we are right here.
    ++I understand
    -- <strong>Flecter: Great. Now...
    ->ChoosingBots
    
===ChoosingBots
Tianco: So there's my friend Puffy who does awesome breathing things with you, and also Hero can help find your strengths and ...
<strong>Flecter: Tianco! Control yourself, you are making little sense. 
<strong>{username}, each of us will offer to support you with a specific technique to cope better when you're feeling stressed. 
<strong>Some things will work for you and other won't, but that is finding who works with you is part of it all. 
+Can I choose who?
Tianco: You can tell us what you think. We won't be offended, right Flecter? If you are not to keen on one of us, just say so.
<strong>Flecter: Your feedback will help us to introduce you to someone else next time, if you want. So we choose, but with your help.
    ++Can we start?
->DataCollection1

===DataCollection1
<strong>Flecter: Of course! First, we'd like to get to know you a bit better.
Tianco: Yes! I want to be your friend!
<strong>Flecter: I mean that when we know you better, we can decide who of us would be most beneficial to talk to. Can you tell us what you do?

+(work) I work
+(school) I'm in school
+Something else
    ++(both) School and work?
    Tianco: Impressed.
    ++(home) Family carer?
    ++Neither
- <strong> Flecter: Thanks. That will help us.
Tianco: So can we introduce you to someone now?

->moreQuestions

===moreQuestions
<strong>Flecter: I'm sure they have more questions Tianco!
+Examples of stress
    Tianco: <>
    {DataCollection1.school: Like exams. Or an assignment,}<>
    {DataCollection1.work: Deadlines. Or an important presentation, }<>
    {DataCollection1.both: Deadlines. Assignments. Too much work, }<> 
    {DataCollection1.home: Kids. Being too busy. Bills, }<>
     those kinds of things.
    
+Privacy
- ->END



