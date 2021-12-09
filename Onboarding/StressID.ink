===LearnMoreAboutYou
<strong>Flecta: Of course! First, we'd like to learn a bit more about why you are here.
{userNoBanter==0: Tianco: Yes! and I want to be your friend!}
<strong>Flecta:  {userNoBanter==0: Quiet now Tianco, this is important.} <>
<strong> When we learn more about you, it is easier to decide who would be most beneficial for you to talk to.
And rest assured, we protect your privacy at all times.
->HowStressed

===HowStressed
<strong>Flecta: Tell me, are you feeling stressed right now?
    + Very
        <strong>Flecta: Sorry to hear that.
        ~stressLevel=2
        ->OngoingOrNot
    + A bit
        <strong>Flecta: Not good.
        ~stressLevel=1
        ->OngoingOrNot
    + Not at all
        <strong>Flecter: Good to hear!
        ->AssignFirstBot

===OngoingOrNot
<strong>Flecta: And is this stress ongoing? Or linked to a specific situation?
    +It's ongoing
        <strong>Flecter: I see.
        
        ->HowLong
    +One situation
        <strong>Flecter: Thanks. Just one more question before we start.
        ~stressOngoing=1
        ->ExplainStress

===HowLong
<strong>So for how long have you been stressed?
    +Few months or so
    ~stressLength=1
    +Few Weeks
    ~stressLength=2
    +Few Days
    ~stressLength=3
    +Hard to say
    ~stressLength=4
    - ->paraphrase

===ExplainStress
Would you mind sharing - tell me a bit more about your stress?
    +Sure!
    UserInputsHere
    +Not now
    <strong>Flecta: That's OK.
    - ->paraphrase
    
===paraphrase
Flecta: Let me see if I get this right. You are feeling {stressLevel==2:very}{stressLevel==1:a bit} stressed right now and {stressOngoing==0:that's been going on for {stressLength==1: a few months}{stressLength==2: a few weeks}{stressLength==3: a few days}}?{stressOngoing==1: And you're stressed because of something specific that happened or is still happening.}
CATEGORISATION HAPPENS HERE BASED ON USER INPUT
    +Sounds about right
        Tianco: Fantastic!
        {userNoBanter==1:
            <strong>Flecta: Do you mind if Tianco joins in again? He's so keen.
            ++All right then
                ~userNoBanter=0
                ->AssignFirstBot
            ++Keep it simple
                ->AssignFirstBot
        }    
    
    +Not really
    <strong>Flecta: That's what you get with us simple Inklings. We learn more every day with your hep though!
    <strong>Flecta:Let's try again.
        ++Good idea
            ->ExplainStress
        
        ++No thanks
            ->AssignFirstBot
        
    
    
    