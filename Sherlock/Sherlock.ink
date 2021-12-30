
// Lock Status
// unlocked
//

// ---- Sherlock ----
# technique: Sherlock Formation
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

-> END

==== First_session ====

[Sherlock GIF]

Hey {username}, my name is Sherlock Bot.

I'm here to help you with what's stressing you. Let's start with a few questions. Have you had this issue or something similar before?

    + Yes
        -> Path_A
    + No 
    
    
-> END


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
    -> END




==== Second_session ====

-> END






==== Third_session_and_after ====

-> END

==== Farewell_module ===

[Exit to farewell module]
-> END


