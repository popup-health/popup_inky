VAR username = "Miranda"

+Hi
->Start

===Start

<strong>Flecter: Hey {username}! My name is Flecter. Welcome to Pop-up!
Tianco: And I'm Tianco. Can't wait to tell you everything about us. Did you know...
<strong>Flecter: All in good time, Tianco.

+What do you do?
    <strong>Flecter: We're here to help you learn how to deal with stress.
    Tianco: Can I tell more about the others now, Flecter? Please?
    <strong>Flecter: Forgive my young friend here. Very eager to introduce us all.
    
    ++Just explain please
        <strong>Flecter: We are all <>->WhatweDo
    
    ++Keen to hear him out
        <strong>Flecter: Oh well. Go ahead then, young one.
        ->WeAreABotWorld
        
+Interesting names...
    <strong>Flecter: Oh yes... We've got names that kind of reflect why we are here. 
    Tianco: If you're a bit of a puzzle person it can be fun to make them out!
    ++Please just explain
        <strong>Flecter: Of course. Tianco, I'll continue alone. 
        <strong>In the Pop-up! world, we are all <> ->WhatweDo
    ++Very intriguing!
        ->WeAreABotWorld

===WeAreABotWorld
Tianco: There's many of us and we all want to make you feel better about stressy stuff.
<strong>Flecter: (sigh) What he means is that we're <>->WhatweDo 

===WhatweDo
specialised in a specific technique to help you cope with different kinds of stress.
->ReflectAndAct

{WeAreABotWorld: 
    Tianco: Isn't that what I said? But in easy words?
        <strong>Flecter: Kind of, yes.
        +(banter)Love the two of you
            Tianco: Thanks pal! Right back at ya.
            ->ReflectAndAct
        +(nomorebanter)Please just explain
            <Strong> Flecter: I'll continue alone for now, Tianco.
            ->ReflectAndAct    
}

    
===ReflectAndAct
   <strong>Flecter: We teach and support you to reflect on every day challenges and to take actions to sort them out.
    + You solve my problems?
    + What kind of actions?

    - ->warning


===warning
<strong>Flecter: Before we continue, let me clarify a very important thing. 
<strong>We're not trained to support you through serious mental health challenges or situations.
    +Got that
    {WeAreABotWorld || WhatweDo.banter:
        Tianco:
    -else: <strong>Flecter: <> 
    } And for emergencies, please call 911.
    -> AboveOurPayGrade
    
===AboveOurPayGrade    
    <strong> Flecter: {WeAreABotWorld ||WhatweDo.banter: Exactly, Tianco, well said.} These situations are ... let's call it "above our paygrade"
    {WeAreABotWorld ||WhatweDo.banter: Tianco: And we don't even get paid!}
    ++I understand
    -- <strong>Flecter: Great. Glad we are on the same page.
    ->ChoosingBots
    
===ChoosingBots
 {WeAreABotWorld ||WhatweDo.banter: Tianco: So there's my friend Puffy who does awesome breathing things with you, and also Hero can help find your strengths and ...}
 <strong>Flecter: <> {WeAreABotWorld ||WhatweDo.banter:  Tianco! Control yourself, you are making little sense.}

<strong> So, as said, we try to support you when you're feeling stressed, with a specific technique to cope better. And there's many of us! <>
<strong>You'll like to work with some and not with others. Finding that out is part of it all. 
+ Can I choose who?
{WeAreABotWorld ||WhatweDo.banter: Tianco: You can tell us honestly what you think after a session. We won't be offended, right Flecter?}
<strong>Flecter: Your feedback will help us to introduce you to someone else next time or revisit an old friend! So we select who talks to you, but choose with your help.
    ++ Let's start!
    ->LearnMoreAboutYou

===LearnMoreAboutYou
<strong>Flecter: Of course! First, we'd like to learn a bit more about why you are here.
{WeAreABotWorld ||WhatweDo.banter: Tianco: Yes! and I want to be your friend!}
<strong>Flecter:  {WeAreABotWorld ||WhatweDo.banter: Quiet now Tianco, this is important.} <> 
<strong> When we learn more about you, it is easier to decide who would be most beneficial for you to talk to.
And rest assured, we protect your privacy at all times.
->HowStressed

===HowStressed
<strong>Flecter: Tell me, how stressed are you right now?
    + Very
        <strong>Flecter: Sorry to hear that.
        ->OngoingOrNot
    + A bit
        <strong>Flecter: Not good.
        ->OngoingOrNot
    + Not at all
        <strong>Flecter: Good to hear!
    ->END
    
===OngoingOrNot
<strong>Flecter: And is this stress ongoing? Or linked to a specific situation?
    +It's ongoing
        <strong>Flecter: I see. ->HowLong
    +One situation
        <strong>Flecter: Thanks. Just one more question before we start.
        ->ExplainStress
        
===HowLong
<strong>If you say ongoing, for how long have you been stressed?
    +Few months or so
    +Few Weeks
    +Few Days
    +Hard to say
    - Thanks. Just one last thing I'd like to ask.
        ->ExplainStress
        
===ExplainStress
Would you mind sharing - tell me a bit more about your stress?
    +Sure!
    UserInputsHere
    +Not now
    <strong>Flecter: That's OK.
    - <Strong>Flecter: Thank you. Now, let's see who to introduce you to first...
    FIRST BOT IS CHOSEN
    //system chooses first bot
->END
    
    


