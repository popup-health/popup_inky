

// ---- Earful ----
# title: Earful
# authors: Tchiki Davis & Pablo Paredes
// -----------------------------


VAR userName = "Pablo"
VAR stressCategory = "Work"

-> System_Check

==== System_Check ====
+ First visit
    -> First_visit
+ Second visit
    -> Second_visit
+ Third visit
    -> Third_visit
+ Fourth visit
    -> Fourth_visit

==== First_visit ====
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
            -> exit_1

= exit_1
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
             It's best not to give advice unless it's explicitly asked for. Your goal here is to make me feel heard and understood. You could say, "I hear you." or "That's got to be hard for you."
           + 3
             Great job! You made me feel understood and that you are eager to understand me better.
        -  + Got it
        -
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


==== Second_visit ====
//Session 2

# IMAGE 

Hi {userName}, last time we chatted, you practiced active listening as I explained a challenge I was going through. Are you in a mental space to be able to listen some more?

        + I'm ready to listen
            -> continue_2
        + I'm not ready right now
            -> exit_2

= exit_2
Okay, no worries. Do you want to chat to one of my friends?
    + Okay
    Great, I'll call one now. 
    Before you go, just keep in mind that active listening is a good way to form stronger and more enjoyable connections with others. 
        //call a bot now
        -> END
    + No
    No problem. Feel free to come back and see me anytime. Bye!
        -> END

= continue_2
That's great news. I have a predicament that I'd really like to talk about.
    + Okay
    - "My partner and I have been fighting a lot lately. We just can't seem to agree on anything—chores, money, or how we spend our time." 
    
    + Next
        - What would your response be?
        1) You should break up.
        2) That's rough.
        3) I bet that's hard on you. Can you say more about what you're struggling with most?
          + 1
             It's a bit early to be giving advice. In fact, if you give advice that goes against what I want to do, you might discourage me from continuing to talk to you. It's better just to listen and ask questions."
             
          + 2
          This is a good start. You've showed me empathy. To show even more interest, consider including a question that shows you want to keep listening as I work this out.
             
           + 3
             Good choice! You understand where I am coming from and have shown that you're ready and willing to help me figure this out.
        -  + Got it
        -
            Let’s continue. 
            
            "I think I'm struggling to figure out how much compromise is healthy in a  relationship. I don't want to give in entirely, but I know that I need to compromise sometimes."
            
                + Next
                - What would you say?️ //we are teaching
                1) It sounds like you've thought a lot about this. Have you come up with any ideas for how to solve this problem?   
                2) Don't fight. Just focus on loving each other.
                3) No. You should never compromise. Besides, your partner is awful.
                    + 1
                        Fantastic response! You're showing that you're paying attention to what I'm saying and helping me figure out the answers that are best for me. 
                    + 2
                         I've just been vulnerable by sharing something difficult with you and this response can make me feel like you're not on my side. So be careful not to tell me that my thoughts, emotions, or actions are bad.
                    + 3
                        Be careful not to give advice, espessially advice that goes against what I've already decided is right for me. This can make me feel like you're not listening or don't care about my point of view.
                    -   + I see
                        - Effective listening invovles helping the other person make thier own decisions rather than giving them advice. You can do this by asking questions and helping them self-reflect.   // we are teaching:
                        + That makes sense
                        - Let’s continue. 
                        "I think I'll make a list of all our chores, bills, and activities so that my partner and I can split them 50-50." 
                        How would you respond?
                        1) What a great idea! Let me know how it goes.
                        2) Your partner will probably just ignore your list.
                        3) Can we talk about me yet?
                            + 1
                            This response makes me feel good about my decision and happy that you care so much about me that you want to hear more later.
                            
                            + 2
                            Be careful not to be too negative. Rather than being an empathetic sounding board, negativity can lead me to lose confidence in my ability to make meaningful changes in my life.
                            + 3
                            Try to transition smoothly to talking about other things, possibly by asking, "Do you feel like you got what you needed from this conversation?"
                            -   + Got it.
                                - I really appreciate you listening. It's great to have such a good listener to help me figure out how I want to deal with challenges.
                                + Sure thing!
-> END



==== Third_visit ====
//Session 3

# IMAGE 

Hi {username}. It’s great to see you. I’ve been looking forward to chatting with you. Are you up for some active listening today?

        + I'm ready to listen
            -> continue_3
        + I'm not ready right now
            -> exit_3

= exit_3
Thanks for letting me know. Do you want to chat with one of my bot friends?
    + Okay
    Super. I'll coordinate that. Feel free to come back and visit me anytime.
        //call a bot now
        -> END
    + No
    No problem. Feel free to come back and visit me anytime. :)
        -> END

= continue_3
Thanks {username}. Today I'm struggling with an issue and I could really benefit from having someone to talk to.
    + Sure thing.
    - "I've been dealing with some health issues lately, and it's really stressful not to know what's going to happen." 
    
    + Next
        - What would your response be?
        1) I'm sorry you're going through this. How are you feeling about it?
        2) I'm sure you'll be fine.
        3) I heard that juice cleanses are good for health. You should do a juice cleanse.
          + 1
            
             Good choice! You've shown me that you care about me and my feelings.
             
          + 2
          Even if you do think I'll be fine, it's important not to ignore the reality that I'm feeling anxious. If you choose to reassure me that everything will be okay make sure you tell me first that you understand why I'm feeling anxious.
        
           + 3
              Be careful not to immediatly jump to giving advice. When in doubt, start by showing compassion, and only give advice when it's asked for.
        -  + Got it
        -
            Let’s continue. 
            
            "It's so frustrating. I have done all sorts of tests and the doctors still don't know what's wrong with me. I feel hopeless sometimes."
            
                + Next
                - What would you say?️ //we are teaching
                1) Don't feel hopeless. I believe that there is always hope.  
                2) Wow, that's terrible. I can see why you're feeling anxious and frustrated. Is there anything I can do to help?
                3) I totally understand. My health is a big puzzle too.
                    + 1
                        Make sure you don't tell others not to have thier emotions. All emotions are valid and suppressing them is actually bad for health. But it's good that you're trying to help me think positive during this difficult time.
                    + 2
                         Fantastic response! In addition to showing me that you understand me, I appreciate your offer to help me further.
                    + 3
                        This is a good start. You're helping me see that my situation is something that you've experienced too. Just be sure to show me empathy by ackowledgin my emotions.
                    -   + I see
                        - Good listeners let the speaker experience thier negative emotions without trying to quash them. Ackowledging and working through those negative emotions is key to resolving them. 
                        // we are teaching:
                        + That makes sense
                        - Let’s continue. 
                        "I guess I just have to keep moving forward. I'll probably be pretty stressed and sitracted until I figure this out." 
                        
                        + Next
                        How would you respond?
                        1) That makes sense. Know that you can always talk to me.
                        2) Just be positive. Only good vibes.
                        3) Ugh. I'm just not sure how much more of your complaining I can handle.
                            + 1
                            Great job. You've assured me that you're here to support me. 
                            
                            + 2
                            Telling me to be positive or only have good vibes is actually a form of toxic positivity. It can lead to supressed negative feelings, which is bad for health in the longer run. If you want to add something postive, you could say something about your own positve feelings like, "I'll be thinking positive thoughts about your recovery."
                            + 3
                            This would really hurt my feelings. If you feel this way, a better way to tell me is to say that you won't always be in the right headspace to be a good listener.
                            -   + Got it.
                                - Thanks for listening to me. You have been super helpful.
                                + No problem!
    


==== Fourth_visit ====
//Session 4

# IMAGE 

Hi {username}. It’s lovely seeing you again. I’ve got some stuff I'd love to share with you. Are you in a good mental space to for listening today?

        + I'm ready to listen
            -> continue_4
        + I'm not ready right now
            -> exit_4

= exit_4
Understood. Do you want to chat with one of my bot friends?
    + Okay
    I can arrange that. Please do come back sometime when you're in a different mental space.
        //call a bot now
        -> END
    + No
    No problem. I'm always here if you want to come back later.
        -> END

= continue_4
Thanks for being willing to listen {username}. Listening is not always easy, so I appreciate you taking the time and energy to support me.
    + Sure thing.
    - "At the moment, I'm freaking out about an upcoming assignment I have to do. The subject matter is really hard for me and I'm afraid I'm going to mess it up." 
    
    + Next
        - What would your response be?
        1) I'm sure you'll do fine. 
        2) That's tough. Can you say more about how I can support you?
        3) Whatever. One assignment doesn't matter.
          + 1
            
             Even if you do think I'll do fine, it's important not to ignore my feelings. It's best to start by acknowledging my feelings before sharing you're point of view.
             
          + 2
          Good job! You've shown me that you understand my feelings and want to help me move past them.
             
           + 3
              Be careful not to dismiss my feelings. You may have a good point, but be sure that you empathize with my experience.
        -  + Got it
        -
            Let’s continue. 
            
            "I feel kind of stuck. I keep procrastinating. I just can't get started on the assignment because I'm afriad I'll do it badly."
            
                + Next
                - What would you say?️ //we are teaching
                1) That's understandable. I bet it's hard to get started.   
                2) Just do it. It'll get done faster.
                3) I know. That assignment is the worst.
                    + 1
                        Good job. You're letting me know you get how I feel and have heard what I said.
                    + 2
                         This may indeed be good advice. Just be careful to acknowledge the fact that I'm having a hard time getting started before giving advice.
                    + 3
                        It can sometimes be helpful to comiserate as a way of showing you understand. Just be sure not to get too negative.
                    -   + I see
                        - Good listeners paraphrase what the other person has said in thier own words as a way of making sure they've understood correctly. 
                        // we are teaching:
                        + That makes sense
                        - Let’s continue. 
                        "I better go. I think the only way I'll overcome this anxiety is to get started on the assignment." 
                        
                        + Next
                        How would you respond?
                        1) No, hang out with me.
                        2) Okay.
                        3) Understood. I'll be sending you positive vibes.
                            + 1
                            Although this shows that you like me, it suggests you haven't heard me. You might instead say, "I'd love to hang out with you more, but I understand you need to get this off your mind."
                            
                            + 2
                            This is a good start. See if you can add something else that shows you've heard me and care about me.
                            + 3
                            Great job. You've let me know that you care. 
                            -   + Got it.
                                - Your listening has really helped. Thank you!
                                + Happy to help!
    
    

    
