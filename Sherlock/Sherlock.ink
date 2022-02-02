
// Lock Status
// unlocked
//

// ---- Sherlock ----
# technique: Sherlock
# author: ?

VAR username = "Marco"
VAR visit = "first"

-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        -> First_session
  + if second visit
        -> Second_session
  + if third or later visit
        -> Third_session_and_after

==== First_session ====

[Sherlock GIF]

Hey {username}, my name is Sherlock Bot.

I'm here to help you with what's stressing you. Let's start with a few questions. Have you had this issue or something similar before?

    + Yes
        -> Path_A
    + No 
        -> Path_B


==== Path_A ====

Is there something you've done in the past to help with this issue?

    + Yes
        -> Continue_path_A
    + No 
        Well, let's find something then...
        
        -> Path_B
        
        
==== Continue_path_A ====
    + Branch 0
        -> Continue_path_A_branch_0
    + Branch 1
        -> Continue_path_A_branch_1



==== Continue_path_A_branch_0 ====

    If you want, please write it as evidence of your ability to solve this case? 
    We can keep track of this so it can be useful later.
    
        + User input is logged as strategy variable
        -> End_path_A


==== Continue_path_A_branch_1 ====
    Do you want to share it with me? It might be useful later.
    - 
    + No
        -> End_path_A
    + Yes
    -
         Perfect, go ahead and write it as a single message!
         
            + User input is logged as strategy variable
            
                -> End_path_A


==== End_path_A ====
Nice. Could you use that to solve your current issue?

    + Yes
        That's great. Since it works, it could be good to have a reminder of what helps.
        -> Calendar_options
    + No  
        -> Path_B

==== Calendar_options ====

    + Calendar available
        -> Calendar_available
    
    + Calendar not available
        -> Calendar_not_available


==== Calendar_available ====
Do you want it in your calendar or just a reminder from me?

    + Calendar
        -> Set_calendar
    
    + Remind me 
        -> Set_reminder
        
    + Do not remind me 
        No problem, we can always check it in the future whenever we meet. 
        -> Farewell_module
    

==== Calendar_not_available ====
Do you want to remind me in the future?
+ Remind me 
    -> Set_reminder
+ Do not remind me 
    No problem, we can always check it in the future whenever we meet.
        -> Farewell_module


==== Set_calendar ====
Cool. I'm about to open a calendar invitation for you.
Put in the details and save it, then come back here and we'll keep going.
    + Enter calendar event 
        Nice work, {username}! I hope your stress feels more manageable. Keep practicing!
            -> Farewell_module


==== Set_reminder ====
Of course! When would you want to be reminded?

    + Later today  
        Will do!
        [ Save in log ] 
    + Later this week 
        Will do!
        [ Save in log ] 
    + Next week 
        Will do!
        [ Save in log ] 
    -     
    Nice work, {username}! I hope your stress feels more manageable. Keep practicing!
    -> Farewell_module

==== Path_B ====
    + Branch 0
        -> Path_B_branch_0
    + Branch 1
        -> Path_B_branch_1
        
==== Path_B_branch_0 ====
    
    Perhaps breaking down the problem would be helpful here. Think of a piece of a problem and if you want write it down in one line.
    
    + User input saved as "smallProblem"
    
    - 
    Think of a simple strategy or technique to solve only this piece of the problem. Again, go ahead and take note of it if you feel like it.
    
     + User input saved as "strategy"
    
        -> End_path_A_from_B



==== End_path_A_from_B ====
Nice. Could you use that to solve your current issue?

    + Yes
    
        That's great. Since it works, it could be good to have a reminder of what helps.
        
        -> Calendar_options
        
    + No  
    
        It's OK... It may come to you later. For now just try breathe slowly, and focus your attention just on one task.
        
        -> Farewell_module


==== Path_B_branch_1 ====
    Perhaps breaking down the problem would be helpful here. Think of a piece of the problem. Let me know when you are done.
        
        + Done
        - 
        
        Do you want to save your thought in our detective's log?
        
        + No
        
        No problem colleague, let's keep working!
            -> Continue_path_B_branch_1
        
        + Yes
        
        Perfect, go ahead. Please write it in a single line so I can store it effectively!   
            
            - + User input saved as "smallProblem"
            
            -> Continue_path_B_branch_1


==== Continue_path_B_branch_1 ====
Think of a simple strategy or technique to solve only that piece of the problem. Again,  let me know when you are done.

    + Done  
    
    - 
    Ok! Do you think you'll use that approach to work on your current issue?
    + Yes 
        -> End_path_B
    
    + No 
    - 
        Do you want to think of a different strategy?
            + Yes
            -> Continue_path_B_branch_1
            + No 
            It's OK... It may come to you later. For now just try breathe slowly, and focus your attention just on one task.
        
        -> Farewell_module



==== End_path_B ====

Should we save your idea in our problem-solving detective's log?

    + No 
        No problem!
        -> Farewell_module
    + Yes 
    - 
        Perfect, go ahead. Just a short phrase is fine!
        
            + User input saved as "strategy"
            
            -> End_path_A_from_B


==== Second_session ====

    + Past engagement positive or neutral
        -> Second_Session_positive
    + Past engagement negative
        -> Second_Session_negative

==== Second_Session_negative ====
    [Sad GIF]
    
   I know we're still getting to know each other, so let's see if this time we can make it work even better. 
   
   Do you want to try one more time, or talk to one of my buddies?
   
   + Try again  
        -> Path_A
   
   + Talk to a new bot 
        -> Change_bot

==== Second_Session_positive ====

[happy GIF]

Welcome back partner! Let's get our magnifying glass out and look at the problem in detail.
    -> Path_C

==== Path_C ====

Is this issue similar to others in the past? 
    + Yes 
        -> Check_strategy_log
    + No 
        -> Path_B

==== Check_strategy_log ====
    
    + No data
        -> Path_A
    + Strategy log has data 
        - f
        Ok, do you want to see what you've written in your log up til now?
        + Yes 
            -> Show_log_strategies
        + No 
            No problem!
            -> Path_A
        

==== Show_log_strategies ====

Here are your latest strategies. Choose one or enter a new one.

[Display last n strategies (max 10)]

    + Enter new strategy
        Save input in strategy log
        -> End_path_A
    + Past strategy 1
        -> End_path_A
    + Past strategy 2
        -> End_path_A
    + ... Strategy n
        -> End_path_A

==== Third_session_and_after ====
    + Past engagement positive or neutral 
        -> Third_session_positive
    + Past engagment negative 
        -> Third_session_negative
    
    
==== Third_session_positive ====
[Happy GIF]

Hi, am ready for a new case! Let's get you doing more problem solving!

Do you want analyze your problem and solution by yourself, or do you want a refresher?

    + Yes, a refresher 
        Of course!
        -> Path_C
        
    + I know how to do it 
        Sure, go ahead! Let me know when you are done identifying a solvable piece of the problem and a simple strategy to solve it.
        - 
        + Done 
        -> Continue_path_A


==== Third_session_negative =====

[Sad GIF]

It seems last time didn't work as well as we'd hoped. Let's make it work now.

Do you want to try one more time, or talk to one of my buddies?

    + Try again 
        -> Path_A 
        
    + Talk to new bot 
        -> Change_bot

==== Farewell_module ===

[Exit to farewell module]

-> END

==== Change_bot ====

[Choose new bot]

-> END


