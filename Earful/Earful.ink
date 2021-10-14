//locked by tchiki

VAR userName = "Pablo"

//we are teaching: active listening
# IMAGE 
.
Hi {userName}, my name is Earful. I help people become active listeners. We're going to practice active listening through a role play activity. 
I'll tell you about a challenge I'm having and you're job will be to listen activley. 
    + Okay
    - Before we get started, ask yourself, are you ready to listen deeply? Or, are you focused on your own thoughts and need time to process them before activly listening to someone else?
        + I'm ready to listen
            -> continue_1
        + Not ready right now
            -> exit

= exit
Okay, no worries. Do you want to chat to one of my friends?
    + Okay
    Sure, I will call one now. 
    Don't forget that learning to listen to others not only improves your social skills, but it could be a good resource to calm your own worries.
        //call a bot now
        -> END
    + No
    No problem. I'd still love you to come back when you in a differnt headspace. Bye!
        -> END

= continue_1
Thank you! And don't worry, I'll give you some hints on how listen actively and respond.
    + Got it
    - Let’s start! 
    "{userName}, I have been trying to figure out a way to tell my family that I want to quit medical school. I would really like to go to law school, but I am worried about crushing my parents dreams of me becoming the first doctor in the family." 
        + Next
        - What would your response be?
        1) That sounds tough.
        2) Just tell them.
        3) That's a difficult situation. Can you tell me more?
          + 1
             This is a great start. You've showed me that you understand my feelings. To show that you are eager to understand me even better, you could ask me a follow up question like "Why don't you like medical school anymore?" or "Why do you want to go to law school?"
          + 2
             It's best not to give advice unless it's expicitly asked for. Your goal here is to make me feel heard and understood. You could say, "I hear you." or "That's got to be hard for you."
           + 3
             Great job! You made me feel understood and that you are eager to understand me better.
        -  + Got it
            Let’s continue. 
            "To be honest, I am a little confused on how I should approach my family." 
                + Next
                - What would you say?️ //we are teaching: listen and clarify
                1) I bet your family isn't nearly as bad as my family. They are super hard to talk to.
                2) Can you say more about what is confusing and how I can support you?   
                3) I don’t get why this is so hard for you. It's your life so do what you want.
                    + 1
                        A common mistake when listening is to downplay the other person's experience or talk about ourselves. A better way to make the other person feel heard is to acknowledge and accept thier feelings.
                    + 2
                        What a helpful response! You're making me feel very comfortable talking to you.
                    + 3
                        It's not always easy to understand where the other person is coming from. But when we dismiss thier emotions we can hurt our relationship with them. Even if it's difficult, try to see the situation from thier point of view and listen compassionately.
                    -   + I see
                        - When listening actively, it's key to give your full attention to the other person and really show that you care about thier feelings and point of view. // we are teaching: acknowledgement
                        + That makes sense
                        - Let’s continue. 
                        "I'm going to talk the my family this week. What do you think I should say?" 
                        How would you respond?
                        1) Tell them you're quiting medical school and there is nothing they can do about it.
                        2) I don't know.
                        3) If you tell them how you feel and why this is important to you, they'll have to accept it in time.
                            + 1
                            This might be good advice for one person and not for another. So rather than giving advice, it's usually best to help the speaker think through which actions that are best for them.
                            + 2
                            You might not know, and that's fine. But you can still show me that you care by telling me you're confident in my ability to do what's best for me.
                            + 3
                            This response helps me feel confident in my ability to do what's best for me.
                            -   + Sure thing!
                                - Thank you for listening and helping me think through this challenge. I really felt heard and understood.
                                + You're welcome
-> END

//Session 2

# IMAGE 

Last time we chatted, you practiced ative listening as I explained a challenge I was giong through. Are you explored something good that happened to you recently.


.
Hi {userName}, my name is Earful. I help people become active listeners. We're going to practice active listening through a role play activity. 
I'll tell you about a challenge I'm having and you're job will be to listen activley. 
    + Okay
    - Before we get started, ask yourself, are you ready to listen deeply? Or, are you focused on your own thoughts and need time to process them before activly listening to someone else?
        + I'm ready to listen
            -> continue_1
        + Not ready right now
            -> exit

= exit
Okay, no worries. Do you want to chat to one of my friends?
    + Okay
    Sure, I will call one now. 
    Don't forget that learning to listen to others not only improves your social skills, but it could be a good resource to calm your own worries.
        //call a bot now
        -> END
    + No
    No problem. I'd still love you to come back when you in a differnt headspace. Bye!
        -> END

= continue_1
Thank you! And don't worry, I'll give you some hints on how listen actively and respond.
    + Got it
    - Let’s start! 
    "{userName}, I have been trying to figure out a way to tell my family that I want to quit medical school. I would really like to go to law school, but I am worried about crushing my parents dreams of me becoming the first doctor in the family." 
