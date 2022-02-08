//script part where user evaluates the intervention with Flecta and Tianco

===EvaluateBot
WHEN USER RETURNS FROM BOT

<strong>Flecta: {~Welcome back. | Here you are! | You're back.}
<strong>Flecta: How was your session with BOTNAME?

    +Extremely helpful
        Tianco: {~Fantastic | Excellent | Wonderful} 
        <strong>Flecta: Could you say why you liked it? Type your answer.
        USER INPUT ABOUT BOT EXPERIENCE
        
    +A bit helpful
        Tianco: {~That's good | Good to hear | Nice}
        <strong>Flecta: Could you say why you liked it? And what could be better? Type your answer.
        USER INPUT ABOUT BOT EXPERIENCE
        

    +Just OK 
        Tianco: {~I see | All right}
        <strong>Flecta: Can you tell me a bit more? Why you feel this way? Type your answer.
        USER INPUT ABOUT BOT EXPERIENCE
        
    
    +Not very helpful
        Tianco: {~That's not good |Sorry to hear that}
        <strong>Flecta: Can you explain? What could be better?
        USER INPUT ABOUT BOT EXPERIENCE

    
    +Not at all
        Tianco: {Oh no, very sorry to hear that | Glad you're so honest}
        <strong>Flecta: Can you tell me a bit more? What was wrong - and how can we change?
        USER INPUT ABOUT BOT EXPERIENCE


  - -> AcknowledgeFeedback 


===AcknowledgeFeedback

<strong>Flecta: {~Thanks for sharing this with us. |Let me note that. |We'll definitely remember that. |Noted!}
<strong>Flecta: We learn from your feedback, so we can help you better each time you visit!

->HowToReconnect



