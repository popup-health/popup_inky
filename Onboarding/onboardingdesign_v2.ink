->Welcome

===Welcome

Bot1: Welcome to the Pop-Up world!
Bot2: Nice to meet you.
Bot3: Looking forward to chat.

*Hello to you all!
    BOT 3: Right back at ya. 
    ** So you three are...?
    
*Who are you?
    Bot 2: Good question.
*What happens here?
    Bot 1: Ah - let's clarify. 

-->ThreeBots


===ThreeBots

    Bot1: We consider ourselves the welcome committee here at Pop-Up!
    Bot2: You'll meet more of us later.
    *There's more of you?
        Bot 3: You bet! A whole tribe.
    *Lots of cute bots!
        Bot 3: Don't make me blush!
        
    - Bot2: We're here for short and simple chats with you, each time you need a bit of help with day-to-day challenges.
            *(nobot) OK. Let's start.
   
            * I like that
            Bot 3: Good, good. The more the merrier, I say!
            *(what_challenges) You solve problems?
   
   - ->ExplainMore
   
   
   ===ExplainMore
   {ThreeBots.what_challenges: Bot1: Not serious stuff. Let us explain a bit more.}
   Bot 2: We are all specialised in a technique to help you with every day stress.
   Bot 1: We kind of discuss between us who'll be most suited to help you.
   Bot 3: And then you have a one-on-one with them!
   
   *That sounds great!
   
   *How long is a chat?
        Bot 3: We know you're busy. So we keep it between 5 and 10 minutes tops.
        
    - Bot 2: Now you know a bit more about us. Your turn!
    Bot 3: Question time...
    Bot 1: Don't mind Bot 3! Just simple quick things we need to know to help you best.
    ->Question1
   
    

===Question1
Bot 1: Do you work, or go to school?
*(school) School
*(work) Work
*(schoolWork)Both
    Bot 3: Impressed!
*Neither
- Bot 1: Thanks. We really want to get to know you 
->Warning


===Warning
    <> so we can help you manage that everyday stress, but...
    Bot 3: ...we're just simple creatures. If you're dealing with a crisis or a serious mental health challenge that's above our pay grade!
    Bot 1: What Bot 3 means is then you should talk to a licensed therapist or call 911 if it's an emergency.

    *Ok. Got that.
    Bot 2: Good. Glad we got that out of the way.

    *What's everyday stress?
    Bot 2: For example, you could be dealing with a deadline {Question1.work: at work}{Question1.school:for an assignment}
    
- ->SuggestBreathingExercise

===SuggestBreathingExercise
Bot 1: Now. Let's get started! Let me introduce Puffy. 
They'll show you a breathing exercise. Enjoy, and I'll see you after that.
*I may not like it
Bot2: That is very possible! The great thing is, we learn from your feedback after each chat.


*Sounds good
Bot 1: Make sure you let us know how it went! We learn from your feedback after each chat.
- Bot 1: So we can introduce you to someone else next time! Plenty more to meet!


<i> Intervention 1 starts </i>
->END
