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

<strong>Flecta: (sigh) Thanks, Tianco. Our friends are micro-coaches who explain techniques that help with everyday challenges.
{userNoBanter==0:
    Tianco: Isn't that what I said? But in easy words?
        <strong>Flecta: Kind of, yes.
        +Love the two of you
            Tianco: Thanks pal! Right back at ya.
            ->ReflectAndAct
        +Please just explain
            ~userNoBanter = 1
            <Strong> Flecta: I'll continue alone for now, Tianco.
            ->ReflectAndAct
}
    +Challenges? Such as?
    ->ReflectAndAct

===WhatweDo
micro-coaches who try to help humans handle stressful moments.
{userNoBanter ==0:
    Tianco: Can I talk about the others, Flecta? Please?
    <strong>Flecta: Forgive my young friend here. Sometimes a bit too eager.
    +Who are the others?
        <strong>Flecta: Oh well. Go ahead, Tianco. But try to be clear!
        ->WeAreABotWorld
}
        ++ (kindsofstress)Stressful moments?
            <strong>Flecta: Stress like deadlines, feeling overwhelmed, being worried about relationships, finances, health ... those kinds of things.

        -- ->ReflectAndAct





===ReflectAndAct
   <strong>Flecta: {userNoBanter ==0: Tianco and} I listen to what's happening in your life.
   <strong>Flecta: Then  {userNoBanter ==0: we} {userNoBanter ==1: I} introduce you to a micro-coach who  {userNoBanter ==0: we} {userNoBanter ==1: I} think can help you best with stress.
    {not WhatweDo.kindsofstress:
        <strong>Flecta: Stress as in deadlines, feeling overwhelmed, worried about relationships, finances, health ... those kinds of things.
    }
    ->warning


===warning
    +You solve things?
        <strong>Flecta: Kinda. The micro-coaches teach you techniques to reflect on every day challenges and suggest actions to sort them out.
        <strong>Flecta: BUT... For really serious mental health challenges or situations - please talk to a human therapist.
        ++Got that
            {userNoBanter == 0:
                Tianco:<>
            -else: <strong>Flecta: <>
            } And for emergencies, please call 911!
            -> AboveOurPayGrade

===AboveOurPayGrade
    <strong> Flecta: <>
    {userNoBanter ==0: Exactly, Tianco, well said.}
    <strong>These situations are ... let's call it "above our paygrade"
    {userNoBanter ==0:Tianco: And we don't even get paid - or do we, Flecta?}

    +I understand
    - <strong>Flecta: Great. Glad we are on the same page.
    ->ChoosingBots

===ChoosingBots
+I'm ready to start!
    <strong>Flecta: So there are a lot of micro-coaches...

     {userNoBanter==0:
     Tianco: Yes! There's Puffy who does awesome breathing things with you! And Hero can help you find your strengths and ...
     <strong>Flecta: Tianco! Control yourself, you are making little sense.
     }

     <strong>Flecta: You may like some more than others. And if you tell  {userNoBanter ==0: us} {userNoBanter ==1: me}, it helps us decide who to introduce you to next.
     {userNoBanter==0:
     Tianco: They don't mind if you don't really like them, right, Flecta?
     <strong>Flecta: Indeed Tianco, all the micro-coaches want to do is help.
     }
                ++ I understand
        --->LearnMoreAboutYou
