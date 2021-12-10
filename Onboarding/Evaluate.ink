//script part where user evaluates the intervention with Flecta and Tianco

===EvaluateBot

<strong>Flecta: {~Welcome back | Here you are | All ears}
<strong>Flecta: How did you like your session with BOTNAME?

    +Extremely helpful
        Tianco: {~Fantastic | Excellent | Wonderful} 
        -> AcknowledgeFeedback
        
    +A bit helpful
        Tianco: {~That's good | Good to hear | Nice}
        -> AcknowledgeFeedback
    +Just OK 
        Tianco: {~I see | All right}
        ->ExpandOnBadXP
    +Not very helpful
        Tianco: {~That's not good |Sorry to hear that}
        ->ExpandOnBadXP
    
    +Not at all
        Tianco: {Oh no, very sorry to hear that | Glad you're so honest}
        ->ExpandOnBadXP
    


===ExpandOnBadXP
<strong>Flecta: Can you tell us a bit more?
+Not my type of action
+Too hard
+Uninteresting

- -> AcknowledgeFeedback

===AcknowledgeFeedback

<strong>Flecta: {~Let me note that. |We'll definitely remember that. |Definitely noted!}
<strong>Flecta: We learn from your feedback, so we can help you better each time you visit!
Tianco: and we want you to come back!

->HowToReconnect



