
// Lock Status
// unlocked
//

// ---- Habi ----
# technique: Habit Formation
# author: A PopBot Intervention By David and Marco
// Session 1 Setting up new habit
// Session 2 Review habit 
// Session 3 for difficult person
// -----------------------------



VAR username = "Marco"
VAR visit = "first"

-> System_Check


==== System_Check ====
//system checks user profile for previous interactions with Bot//
  + if first visit
        -> First_session
  + if second visit
        -> Second_session
        ->END
  + if third or later visit
        -> Third_session_and_beyond

-> END



==== First_session ====

Hello, {username}. My name is Habi and I'll be your micro-coach to help you form and keep new habits to improve your life!

Habits are learned behaviors that become automatic over time. We can form new habits if we practice them over long enough, usually a couple of weeks. 

While habits can be good or bad, we'll focus on intentionally creating and practicing good habits to improve your life. 

Ready to get started?

    + Tell me more about habits
        -> Habits_extra_info

    + Examples
        -> Examples_of_habits

    + Yes, let's start
        -> Create_habit_exercise


==== Habits_extra_info ====
   There are many different types of habits. For example: 
   
   Mastery habits focus on getting better at a skill over time
   
   Pleasure habits are about remembering to relax by doing activities you like
   
   Social habits help strengthen your relationships with others 
   
   Health habits let you do activities to improve your physical and emotional wellbeing
    
    + Examples
    -> Examples_of_habits
    
    + Let's start
    -> Create_habit_exercise

-> END


==== Examples_of_habits ====
Here are many examples of habits. They can be either good or bad, and of many different types:

    Drinking a glass of water after waking up.
    
    Remembering to call your parents once a week.
    
    Ordering dessert after every meal, even if not hungry.

I'll help you focus on forming good habits.

    + Tell me more about habits
    -> Habits_extra_info
    
    + Let's start
    -> Create_habit_exercise

==== Examples_of_goals ====

Goals can be anything that you'd want to see in your life

Here are some examples of goals:

Eating healthier

Improving my relationship with my friends

Saving some money


Let's get back to the exercise.

    + Got it. 
    -> continue_habit_exercise_part1


==== Create_habit_exercise ====

Great!

First, I'll teach you the most effective way to set up a habit.

A habit is usually tied to a goal that we want to achieve. 

Think about a positive goal that you want to achieve. It can be anything like eating healthier, writing more, or being more grateful. It can be something general. We'll focus on making it a SMART goal in the next step.

    + Got my goal
    -> continue_habit_exercise_part1
    
    + Examples of goals
    -> Examples_of_goals

-> END

==== continue_habit_exercise_part1 ====

Awesome! Now, let's make sure this goal is a SMART one.

SMART goals are proven to increase follow up.

SMART stands for Specific, Measurable, Attainable, Realistic and Time sensitive.

    + More info 
    -> SMART_goals_info
    + Continue exercise 
    -> continue_habit_exercise_part2
    
==== continue_habit_exercise_part2 ====

Think about your goal. 

Now, narrow it down and focus on a single action or habit that will take you closer to your goal. 

Think about how you will know if you're successful, and think about when you'll do it.

Let me know when you've figured it out.

    + Done
    - 
        That's awesome. 
        Studies have shown that writing down our goals make us more likely to complete them. Write down your goal here:
         +  [User input: Write down goal]
            -> end_habit_exercise
    

-> END
    
    
==== end_habit_exercise ====
Okay, got your new habit! Want to add a reminder to your calendar to remind you to do your habit?
    + Yes, please
        [Add calendar reminder process]
        -> End_session_1
    + No, I'm ok
        Alright, just remember to follow up on your new habit!
    -> End_session_1

==== End_session_1 ====
Good job. Next time we'll check to see if you're following up on your goal. 

    See you then!
    -> END

==== SMART_goals_info ====

    + Specific
        Focus on one aspect 
        -> SMART_goals_info
    + Measurable
        Can be tied to a metric
        -> SMART_goals_info
    + Attainable
        You could achieve them
        -> SMART_goals_info
    + Realistic
        It would be good for you to achieve
        -> SMART_goals_info
        
    + Time Sensitive
        It's tied to a deadline
        -> SMART_goals_info
        
    + Continue exercise 
    -> continue_habit_exercise_part2




==== Second_session ====

[Welcome back]

[Check in on habit: bring out from stored variable]

[If forgot completely, scenario A: modify, specify, or try another]

[If remembered but procrastinated, scenario B: techniques for follow through]

[If successfully followed with it, scenario C: congrats, keep going, remind that habit takes weeks to form ]


-> END



==== Third_session_and_beyond ====

[Welcome back]

[Check in on habit: bring out from stored variable]

[If forgot completely, scenario A: modify, specify, or try another]

[If remembered but procrastinated, scenario B: techniques for follow through]

[If successfully followed with it, scenario C: congrats, keep going, establish another habit, or exit]



-> END


























