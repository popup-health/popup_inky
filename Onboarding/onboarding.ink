==TiancoIntro
Tianco: Hi there! I'm Tianco. Can't wait to work with you!
<strong>Flecta: Tianco and I are the Inkling welcoming committee! But you may want to keep things simple and just talk to me.
++Yes - keep it brief
    ~userNoBanter = 1
        <strong>Flecta: Of course. In short, we are Inklings, <> ->WhatweDo
++Just go on
Tianco: Can't wait to tell you all about us!
<strong>Flecta: All in good time, Tianco. 
->StartOnboarding



===StartOnboarding
+So who are you?
    <strong>Flecta: We're <>->WhatweDo 
    
+Interesting names...
    <strong>Flecta: Ah... We've got names that kind of reflect why we (and you!) are here.
    Tianco: If you're a bit of a puzzle person it can be fun to analyse our names!
    ++The short explanation?
        <strong>Flecta: Of course. In a nutshell, we are<> ->WhatweDo
    ++Intriguing! Go on.
        ->WeAreABotWorld

===WeAreABotWorld
Tianco: It's not just the two of us! We have so many friends and they all want to make you feel better about stressy stuff.
<strong>Flecta: (sigh) Thanks, Tianco. He means that we'll introduce you to fellow Inklings who help you with everyday challenges.
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
        ++ (kindsofstress)Stressful moments?
            <strong>Flecta: Things like work or school deadlines, feeling overwhelmed, worries about relations,.. those kinds of things.
        ++ How can you help?   

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
   {not WhatweDo.kindsofstress: 
        <strong>Flecta: Stressful times like work or school deadlines, feeling overwhelmed, worries about relations,.. those kinds of things.
    }
    <strong>Flecta: Tianco and I listen to what's happening in your life.
    <strong>Flecta: Then we introduce you to a specialist Inkling who we think can help you best. 
        ->warning


===warning
    +They solve it all?
        <strong>Flecta: They will teach you techniques to reflect on every day challenges and suggest actions to help sort them out.
        <strong>Flecta: But ... if you have a really serious mental health challenge going on, remember we're just simple creatures. Then do talk to a human therapist. 
        ++Got that
            {userNoBanter == 0:
                Tianco:<>
            -else: <strong>Flecta: <>
            } And for emergencies, please call 911!
            -> AboveOurPayGrade

===AboveOurPayGrade
    <strong> Flecta:<>
    {userNoBanter ==0: Exactly, Tianco, well said. <>}
    <>These situations are ... let's call it "above our paygrade"
    {userNoBanter ==0:Tianco: And we don't even get paid!}
    
    +I understand
    <strong>Flecta: Great. Glad we are on the same page. 
    ->ChoosingBots

===ChoosingBots
<><strong> Let's see who we can introduce you to first.
     {userNoBanter==0:
     Tianco: Yay! So there's Puffy who does awesome breathing things with you, and Hero can help find your strengths and ...
     <strong>Flecta: Tianco! Control yourself, you are making little sense.
     }
      <strong>Flecta: We'll need to get to know you a bit better first. Just a few questions.
    + Let's do this!
    -->LearnMoreAboutYou
    
 ===LearnMoreAboutYou
<strong>Flecta: After that, we can decide which Inkling is the best match for you! And of course we just chat among us Inklings - we protect your privacy at all times.
{userNoBanter==0: 
Tianco: Zip - locked - shut!
<strong>Flecta: Quiet now Tianco, this is important.
}

->HowStressed  

