
// Lock Status
// unlocked
//

// ---- Habit Formation ----
# title: Habit Formation
# author: A PopBot Intervention By David and Marco
// Session 1 Loving kindness for self
// Session 2 for stranger
// Session 3 for difficult person
// -----------------------------



VAR username = "David"
VAR visit = "first"

-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        //-> First_session
        ->END
  + if second visit
        //-> Second_session
        ->END
  + if third or later visit
        //-> Third_session

-> END
