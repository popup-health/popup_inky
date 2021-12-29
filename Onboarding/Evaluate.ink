//script part where user evaluates the intervention with Flecta and Tianco

===EvaluateBot
WHEN USER RETURNS FROM BOT

<strong>Flecta: {~Welcome back. | Here you are! | All ears!}
<strong>Flecta: How did you like your session with BOTNAME?

    +Extremely helpful
        Tianco: {~Fantastic | Excellent | Wonderful} 
        <strong>Flecta: Could you say why you liked it?
        USER INPUT ABOUT BOT EXPERIENCE
        <Strong>Flecta: Thanks for sharing this with us. We try to learn from every experience.

    +A bit helpful
        Tianco: {~That's good | Good to hear | Nice}
        <strong>Flecta: Could you say why you liked it? And what could be better?
        USER INPUT ABOUT BOT EXPERIENCE
        

    +Just OK 
        Tianco: {~I see | All right}
        <strong>Flecta: Can you tell me a bit more? Why you feel this way?
        USER INPUT ABOUT BOT EXPERIENCE
        <Strong>Flecta: Thanks for sharing this with us. We try to learn every time.
        
    
    +Not very helpful
        Tianco: {~That's not good |Sorry to hear that}
        <strong>Flecta: Can you explain? What could be better?
        USER INPUT ABOUT BOT EXPERIENCE
        <Strong>Flecta: Thanks for sharing this with us. We try to improve each time!

    
    +Not at all
        Tianco: {Oh no, very sorry to hear that | Glad you're so honest}
        <strong>Flecta: Can you tell me a bit more? What was wrong - and how can we change?
        USER INPUT ABOUT BOT EXPERIENCE
        <Strong>Flecta: Thanks for sharing this with us. We try to learn from you to do better.


  - -> AcknowledgeFeedback 


===AcknowledgeFeedback

<strong>Flecta: {~Thanks for sharing this with us. |Let me note that. |We'll definitely remember that. |Definitely noted!}
<strong>Flecta: We learn from your feedback, so we can help you better each time you visit!
Tianco: and we want you to come back!

->HowToReconnect



