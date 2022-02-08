===StartOnboarding
+Tell me what you do
    <strong>Flecta: We're <>->WhatweDo

+Interesting names!
    <strong>Flecta: Our names kind of reflect why we are here.
    Tianco: If you're a puzzle person it can be fun to make them out!
    ++Enough banter!
        <strong>Flecta: Of course. In a nutshell, we are<> ->WhatweDo
    ++Very intriguing!
        ->WeAreABotWorld

===WeAreABotWorld
Tianco: It's not just the two of us! We have so many friends and we all want to make you feel better about stressy stuff.

<strong>Flecta: (sigh) Thanks, Tianco. We're micro-coaches who explain techniques that help with everyday challenges.
{userNoBanter==0:
    Tianco: Isn't that what I said? But in easy words?
        <strong>Flecta: Kind of, yes.
        +Love the two of you
            Tianco: Thanks pal! Right back at ya.
            ->warning
        +Please just explain
            ~userNoBanter = 1
            <Strong> Flecta: I'll continue alone for now, Tianco.
            ->warning
}
    +Challenges? Such as?
    ->warning

===WhatweDo
micro-coaches who try to help humans handle stressful moments like deadlines, worries about relationships, finances, health...
{userNoBanter ==0:
    Tianco: Can I talk about the others, Flecta? Please?
    <strong>Flecta: Forgive my young friend here. Sometimes a bit too eager.
    +Who are the others?
        <strong>Flecta: Oh well. Go ahead, Tianco. But try to be clear!
        ->WeAreABotWorld
}

        -- ->warning




===warning
    +How?
        <strong>Flecta: We teach you techniques to reflect on everyday challenges. 
        <strong>Flecta: Basically we suggest actions to help you to think differently and find ways to sort out some challenges.
        <strong>Flecta: BUT... For really serious mental health challenges or situations we do want you to talk to a human therapist.
        ++Got that
            {userNoBanter == 0:
                Tianco:<>
            -else: <strong>Flecta: <>
            } And for emergencies, please call 911!
            -> AboveOurPayGrade

===AboveOurPayGrade
    <strong> Flecta: <>
    {userNoBanter ==0: Exactly, Tianco, well said.}
    <strong>These situations are "above our paygrade"
    {userNoBanter ==0:Tianco: And we don't even get paid - or do we, Flecta?}

    +I understand
    - <strong>Flecta: Glad we are on the same page. One last thing: of course your privacy is guaranteed at all times.
    ->ChoosingBots

===ChoosingBots
+OK. Let's start!
    
        --->LearnMoreAboutYou
