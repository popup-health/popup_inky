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
<<<<<<< Updated upstream
<strong>Flecta: (sigh) Thanks, Tianco. He means that we'll introduce you to fellow micro-coaches who explain techniques that help with everyday challenges.
=======
<strong>Flecta: (sigh) Thanks, Tianco. They are micro-coaches who explain techniques that help with everyday challenges.
>>>>>>> Stashed changes
    +Challenges? Such as?
    ->ReflectAndAct

===WhatweDo
<<<<<<< Updated upstream
unique micro-coaches who try to help humans handle stressful moments.
=======
here to try to help humans handle stressful moments.
>>>>>>> Stashed changes
{userNoBanter ==0: 
    Tianco: Can I talk about the others, Flecta? Please? 
    <strong>Flecta: Forgive my young friend here. Sometimes a bit too eager.
    +Who are the others?
        <strong>Flecta: Oh well. Go ahead, Tianco. But try to be clear!
        ->WeAreABotWorld
}
        ++ (kindsofstress)Stressful moments?
            <strong>Flecta: Deadlines, feeling overwhelmed, worries about relationships, finances, health ... those kinds of things.

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
<<<<<<< Updated upstream
   <strong>Flecta: Then we introduce you to the micro-coach who we think can help you best. 
=======
   <strong>Flecta: Then we introduce you to a micro-coach who we think can help you best with stress. 
>>>>>>> Stashed changes
    {not WhatweDo.kindsofstress: 
        <strong>Flecta: As in  deadlines, feeling overwhelmed, worries about relationships, finances, health ... those kinds of things.
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
    <strong>Flecta: These situations are ... let's call it "above our paygrade"
    {userNoBanter ==0:Tianco: And we don't even get paid!}
    
    +I understand
    - <strong>Flecta: Great. Glad we are on the same page.
    ->ChoosingBots

===ChoosingBots
+I'm ready
<<<<<<< Updated upstream
    <strong>Flecta: So there are a lot of micro-coaches.
=======
    <strong>Flecta: We suggest the micro-coaches that we think are best suited. <>
>>>>>>> Stashed changes
     {userNoBanter==0:
     Tianco: Yes! There's Puffy who does awesome breathing things with you! And Hero can help find your strengths and ...
     <strong>Flecta: Tianco! Control yourself, you are making little sense.
     }
     
     <strong>Flecta: You may like some of them more than others. Tell us, it helps our choices.
               
                ++ Let's start!
        --->LearnMoreAboutYou
    
