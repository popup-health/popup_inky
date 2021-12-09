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
unique virtual creatures who try to help humans handle stressful moments.
{userNoBanter ==0: 
    Tianco: Can I talk about the others, Flecta? Please? 
    <strong>Flecta: Forgive my young friend here. Sometimes a bit too eager.
    +Who are the others?
        <strong>Flecta: Oh well. Go ahead, Tianco. But try to be clear!
        ->WeAreABotWorld
}
        ++ (kindsofstress)What kinds of stress?
            <strong>Flecta: Work or school deadlines, feeling overwhelmed, worries about relations,.. those kinds of things.
            
        ++ How do you help?   

        -- ->ReflectAndAct


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


===ReflectAndAct
   <strong>Flecta: Tianco and I listen to what's happening in your life.
   <strong>Flecta: Then we introduce you to a friend who we think can help you best. 
    {not WhatweDo.kindsofstress: 
        <strong>Flecta: ...with stress like work or school deadlines, feeling overwhelmed, worries about relations,.. those kinds of things.
    }
    ->warning


===warning
    +They solve things?
        <strong>Flecta: Kinda. They help you with techniques to reflect on every day challenges and suggest actions to sort them out.
        <strong>Flecta: BUT... For really serious mental health challenges or situations - please talk to a human therapist.
        ++Got that
            {userNoBanter == 0:
                Tianco:<>
            -else: <strong>Flecta: <>
            } And for emergencies, please call 911!
            -> AboveOurPayGrade

===AboveOurPayGrade
    <strong> Flecta:<>
    {userNoBanter ==0: Exactly, Tianco, well said.}
    These situations are ... let's call it "above our paygrade"
    {userNoBanter ==0:And we don't even get paid!}
    
    +I understand
    - <strong>Flecta: Great. Glad we are on the same page.
    ->ChoosingBots

===ChoosingBots
+I'm ready
    <strong>Flecta: We suggest the Inklings that we think are best suited. <>
     {userNoBanter==0:
     Tianco: Yes! So there's Puffy who does awesome breathing things with you, and Hero can help find your strengths and ...
     <strong>Flecta: Tianco! Control yourself, you are making little sense.
     }
      <strong>You may like some more than others. Just tell us.
                ++ Let's start!
        --->LearnMoreAboutYou
    
