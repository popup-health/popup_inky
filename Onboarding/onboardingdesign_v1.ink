->Welcome

===Welcome

Bot1: Welcome to Popup Health!
Bot2: Good to see you.
Bot3: Hey there!

*Hello to you all!
    BOT 1: Thanks!
    BOT 3: Right back at ya. 
    ** So why three bots?
        
        
*Why three of you?

*Let's get started.
->StartSession

-->ThreeBots


===ThreeBots

    Bot1: We're the welcome committtee, kind of, at Popup Health. 
    Bot2: There's many more of us, all ready to help you cope with stress.
    Bot2: We each have our own way to do that.
   *(nobot) OK. Let's start.
     ->StartSession
    
   *(prefer_threebots) Three... I like it.
    {Bot 2: We love meeting new people!|Bot 3: Good, good. The more the merrier, as we bots say.}
    Bot 1: To make things easier though, it would be good if you chose one of us to continue, for now.
   
   *(prefer_onebot) Can I chat to just one?
   - ->ChooseBot
    
===ChooseBot
Bot1: {ThreeBots.prefer_onebot: Of course.} <>
Do you want to make a choice?
Bot2: We could also just do a randomise thingy.
Bot3: But where's the fun in that?

*(bot1)I choose Bot1.
    Bot1: Fantastic. 
    
*(bot2)I choose Bot2!
    Bot2: Oh thanks! 
*(bot3)I choose Bot3!
    Bot3: Cool-io.

- ->StartSession


===StartSession
{not ChooseBot: Bot 1:} <> So I'll take over from here.
Let's start with a question so we can help you.
Are you feeling stressed about something right now?
    *(stressed) Yes, very.
    Sorry to hear that. Let's get you some help.
    
    *(bit_stressed) A bit
    That's not good. Let us try to help you.

    *(not_stressed) Not really.
    That's nice to hear! Yet, you are here.
- ->AskStressor


===AskStressor

{StartSession.stressed || StartSession.bit_stressed: Do you know what is causing your stress today?}
{StartSession.not_stressed: So what are things that do cause you stress, on other days? }

* (study) My study
* (work) Work
* (money) Money
* (relation) Relationship
* Something else
- ->SuggestBreathingExercise

===SuggestBreathingExercise
{ChooseBot.bot1 || not ChooseBot: Bot1: I see. Not unusual. I'd suggest a brief breathing exercise. Just one of the things we bots got on offer.}
{ChooseBot.bot2: Bot2 Hmmm. A very common stressor. A breathing exercise would be a good first choice, I think.} 
{ChooseBot.bot3: Bot3 You're not alone, my friend. How about we start simple. A breathing exercise!}
Shall we get started?
*Sounds good
->introducepuffy
*Tell me more?
->moreInfo


===introducepuffy
{not moreInfo:
    {ChooseBot.bot1 || ThreeBots.nobot: Bot1: Marvellous! Let me introduce Puffy to you. Enjoy, and I'll see you soon.}
    {ChooseBot.bot2: Bot2 Good! I'm releasing you to the excellent care of Puffy. Looking forward to catch up after that.} 
    {ChooseBot.bot3: Bot3 Puffy's your bot! Enjoy - I'll catch you after!}
}

{moreInfo:
    {ChooseBot.bot1 || ThreeBots.nobot: Bot1: Let me introduce Puffy to you, who will show you a breathing exercise. Enjoy, and I'll see you after that.}
    {ChooseBot.bot2: Bot2 I suggest you try a breathing exercise with Puffy to see what it's all about. Looking forward to catch up after that.} 
    {ChooseBot.bot3: Bot3 Know what? Puffy's your bot - showing you just one thing you can do ! Enjoy - I'll catch you after!}

}


<i>NOTE - Now would be a first try intervention follow for the user. After they are done, they return to their chosen bot.</i>
...
->AfterPuffyIntervention


===moreInfo
{ChooseBot.bot1 || ThreeBots.nobot: Bot1: So we bots have a vast array of small things to do to help cope with stress. Together, we try to find what works for you - and what you enjoy of course.}
{ChooseBot.bot2: Bot2: Look, we bots want to take care of you. Help you to find easy things to do when you feel stressed. And there's many of us so we're sure there will be something you like and that works.} 
{ChooseBot.bot3: Bot3: We're all here to help you - us bots. You and me - we're gonna find some good ways to help you cope when you're finding yourself stressed, right?}

*OK. I'll try.

*(unsure) I'm not sure yet.
- ->introducepuffy

->END


===AfterPuffyIntervention

{ChooseBot.bot1 || ThreeBots.nobot: Bot1: Welcome back! Did that help?}
{ChooseBot.bot2: Bot2 Good to see you again! Feeling a bit better?} 
{ChooseBot.bot3: Bot3 Hey! Was that good for ya?}
    *I feel some change.
        {ChooseBot.bot1 || ThreeBots.nobot: Bot1: Overjoyed! }
        {ChooseBot.bot2: Bot2: That makes me very happy. } 
        {ChooseBot.bot3: Bot3: Fist pump!}
    *It was OK, I suppose.
    {ChooseBot.bot1 || ThreeBots.nobot: Bot1: Right. }
        {ChooseBot.bot2: Bot2: I see. } 
        {ChooseBot.bot3: Bot3: Oh.}
    *Not really. 
- Let's try something else. <i>This continues introducing another bot.</i>

->END