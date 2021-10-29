===StartOnboarding
+So who are you?
    <strong>Flecta: We're <>->WhatweDo 
    
+Interesting names...
    <strong>Flecta: Oh yes... We've got names that kind of reflect why we are here.
    Tianco: If you're a bit of a puzzle person it can be fun to make them out!
    ++Please just explain
        <strong>Flecta: Of course. In a nutshell, we are<> ->WhatweDo
    ++Very intriguing!
        ->WeAreABotWorld

===WeAreABotWorld
Tianco: It's not just the two of us! We have so many friends and they all want to make you feel better about stressy stuff.
<strong>Flecta: (sigh) Thanks, Tianco. He means that we'll introduce you to fellow Inklings who explain techniques that help with everyday challenges.
    +Challenges? Such as?
    ->ReflectAndAct

===WhatweDo
a group of unique virtual creatures who try to help humans handle stressful moments.
Tianco: Can I explain about the others, Flecta? Please?
    <strong>Flecta: Forgive my young friend here. Sometimes a bit too eager.
     ++What kinds of stress?
        ->ReflectAndAct

    ++Who are the others?
        <strong>Flecta: Oh well. Go ahead, Tianco. But try to be clear!
        ->WeAreABotWorld


{WeAreABotWorld:
    Tianco: Isn't that what I said? But in easy words?
        <strong>Flecta: Kind of, yes.
        +(banter)Love the two of you
            Tianco: Thanks pal! Right back at ya.
            ->ReflectAndAct
        +(nomorebanter)Please just explain
            <Strong> Flecta: I'll continue alone for now, Tianco.
            ->ReflectAndAct
}


===ReflectAndAct
   
    <strong>Flecta: Things like work or school deadlines, feeling overwhelmed, worries about relations for example.
    + How do you help?
            <strong>Flecta: We help you with techniques to think about what is going on, or simply ways to help you relax a bit.rf

    - <strong>Flecta: Tianco and I are here to explain everything to you and listen to what's happening in your life . Then, we introduce you to a friend who will help you reflect on every day challenges and take actions to sort them out. 
    ->warning


===warning
    +You solve my problems?
        <strong>Flecta: In a sense. But before we continue, let me clarify a very important thing.
        <strong>We're not trained to support you through serious mental health challenges or situations.
        ++Got that
            {WeAreABotWorld || WhatweDo.banter:
                Tianco:<>
            -else: <strong>Flecta: <>
            } And for emergencies, please call 911.
            -> AboveOurPayGrade

===AboveOurPayGrade
    <strong> Flecta: {WeAreABotWorld ||WhatweDo.banter: Exactly, Tianco, well said.} These situations are ... let's call it "above our paygrade"
    {WeAreABotWorld ||WhatweDo.banter: Tianco: And we don't even get paid!}
    ++I understand
    -- <strong>Flecta: Great. Glad we are on the same page.
    ->ChoosingBots

===ChoosingBots
+I work with you two?
    <strong>Flecta: Not exactly. We will always be here to greet you, but our group of real specialists work on your stress.
     {WeAreABotWorld ||WhatweDo.banter: Tianco: Yes! So there's my friend Puffy who does awesome breathing things with you, and also Hero can help find your strengths and ...}
     <strong>Flecta: <> {WeAreABotWorld ||WhatweDo.banter:  Tianco! Control yourself, you are making little sense.}
    
    
    <strong>You may like to work with some and not with others. Finding that out is part of what we do.
        ++ Can I choose?
            {WeAreABotWorld ||WhatweDo.banter: Tianco: You can tell us honestly what you think after a session. We won't be offended, right Flecta?}
            <strong>Flecta: Your feedback will help us to introduce you to someone else next time or revisit an old friend! We select who talks to you, but choose with your help.
        ++ Let's start!
        --->LearnMoreAboutYou


->END
