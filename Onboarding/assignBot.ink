//Tianco and Flecta assign a bot to the USER

===AssignFirstBot

<strong>Flecta: Now ... the exciting moment. Which micro-coach do we assign to you? Tianco, help me out.
Tianco: I'm thinking BOTNAME.
<strong>Flecta: Excellent choice. So you may like some micro-coaches more than others. Tell  {userNoBanter ==0: us} {userNoBanter ==1: me} when you come back, it helps us decide who to introduce you to next.
     {userNoBanter==0:
     Tianco: They don't mind if you don't really like them, right, Flecta?
     <strong>Flecta: Indeed Tianco, all the micro-coaches want to do is help.
     }
                ++ I understand
USER IS SENT OFF TO BOT

->EvaluateBot

===AssignNextBot
Tianco: {~The agony of choice... | Who would be best for you today... | Such an important moment each time ...}

<strong>Flecta: I'm thinking BOTNAME?
Tianco: Spot on, Flecta. There you go.
USER IS SENT OFF TO BOT

->EvaluateBot

