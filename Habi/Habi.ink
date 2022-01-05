
// Lock Status
// unlocked
//

// ---- Habi ----
# technique: Habit Formation
# author: A PopBot Intervention By David and Marco
// Session 1 Setting up new habit
// Session 2 Review habit, address problems
// Session 3 Review habit, set new habit
// -----------------------------

VAR username = "Marco"
VAR visit = "first"
VAR habit = ""

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

Hello, {username}. My name is Habi and I'll be your micro-coach to help you form and keep new habits to improve your life!

Habits are learned behaviors that become automatic over time. We can form new habits if we practice them over long enough, usually a couple of weeks. 

While habits can be good or bad, we'll focus on intentionally creating and practicing good habits to improve your life. 

Ready to get started?

    + Tell me more about habits
        -> Habits_extra_info

    + Examples
        -> Examples_of_habits

    + Yes, let's start
        -> start_habit_exercise


==== Habits_extra_info ====
  There are many different types of habits. For example: 
   
   Mastery habits focus on getting better at a skill over time
   
   Pleasure habits are about remembering to relax by doing activities you like
   
   Social habits help strengthen your relationships with others 
   
   Health habits let you do activities to improve your physical and emotional wellbeing
   
   And so on. 
    
    + Examples
    -> Examples_of_habits
    
    + Let's start
    -> start_habit_exercise

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
    -> start_habit_exercise

==== Examples_of_goals ====

Goals can be anything that you'd want to see in your life

Here are some examples of goals:

Eating healthier

Improving my relationship with my friends

Saving some money


Let's get back to the exercise.

    + Got it. 
    -> continue_habit_exercise_part1


==== start_habit_exercise ====

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

Hi {username}, welcome back! Last time, I told you about habits and we set up a new habit together. 

Today, we'll revisit that habit and find ways to make it easier to follow.

    -> Habit_check_in

-> END

==== Habit_check_in ====

This is the habit you wrote down last time: [user stored goal]

Remember, we are trying to get better at habits in general, so don't worry if you didn't follow up on your new habit this time.

How was trying to do your new habit? Did you do it?

    + I forgot about it completely
    -> habit_response_A
    + I remembered but didn't do it
    -> habit_response_B
    + I did it
    -> habit_response_C


==== habit_response_A ====
    Ah, that's alright. Sometimes we can forget about things even if we really try not to.
    
    Perhaps your new habit was supposed to happen at a time you were busy, or maybe you didn't have somebody to keep you accountable.
    
    + Schedule a different time
        [Change time in calendar reminder process]
        Make sure your reminder is set or to find a better time to do your habit.
        -> habit_check_in_end
    + No accountability
        You can either find a person or two that will check in on your new habit, or you can be more transparent with yourself by setting a metric that will show you if you are successful (for example, if you want to lose weight, using a scale could help).
        -> habit_check_in_end
    + Try another habit
        -> habit_check_in_end
        

==== habit_response_B ====

Well, at least you remembered! Sometimes we postpone things because they are too hard to do or we are busy. 

Maybe your new habit felt too general and overwhelming, or maybe you thought you could do it later. Let's explore why this happened. 


    + Too general
        Try to narrow down your habit to a more simple task.
        [user input: update habit/goal]
        -> habit_check_in_end
    + Too busy
        Make sure your reminder is set or to find a better time to do your habit.
        -> habit_check_in_end


==== habit_response_C ====

    Congrats! Keep going and remember that forming a successful habit takes time. 
    
    Don't worry if you forget to do your habit next time. I'll help you get back on track.
    
-> habit_check_in_end


==== habit_check_in_end ===
Okay, I hope that you've learned of new ways to keep doing your new habit.

Writing things down usually helps us remember. Do you want to write down what you'll do to make sure you follow up on your habit?
        + Yes 
            Great, write it out here: [User input]
            -> End_session_2
        + No 
            No worries, just remember to follow up!
            -> End_session_2

==== End_session_2 ====
Great. Next time we'll check to see if you've improved in doing your habit and maybe even take it to the next level. 
Good luck! See you then!
    -> END


==== Third_session_and_after ====

Hi {username}, welcome back! Last time, we checked in on your habit and tried to find ways to make it easier to follow.

Today we'll see how you're doing with your habit and maybe set another one!

Sounds good?

    + Yes, get started
    -> Session3_habit_check_in

==== Session3_habit_check_in ====

This is the habit you were working on last time: [user stored text]

Remember, we are trying to get better at habits in general, so don't worry if it's been hard to follow up on your new habit.

How was trying to do your new habit? Did you do it?

    + I forgot about it completely
    -> Session3_habit_response_A
    + I remembered but didn't do it
    -> Session3_habit_response_B
    + I did it
    -> Session3_habit_response_C


==== Session3_habit_response_A ====
    Ah, that's alright. Sometimes we can forget about things even if we really try not to.
    
    Perhaps your new habit was supposed to happen at a time you were busy, or maybe you didn't have somebody to keep you accountable.
    
    + Schedule a different time
        [Change time in calendar reminder process]
        Make sure your reminder is set or to find a better time to do your habit.
        -> Session3_habit_check_in_end
    + No accountability
        You can either find a person or two that will check in on your new habit, or you can be more transparent with yourself by setting a metric that will show you if you are successful (for example, if you want to lose weight, using a scale could help).
        -> Session3_habit_check_in_end
    + Try another habit
        -> Session3_habit_check_in_end
        

==== Session3_habit_response_B ====

Well, at least you remembered! Sometimes we postpone things because they are too hard to do or we are busy. 

Maybe your new habit felt too general and overwhelming, or maybe you thought you could do it later. Let's explore why this happened. 


    + Too general
        Try to narrow down your habit to a more simple task.
        -> Session3_habit_check_in_end
    + Too busy
        Make sure your reminder is set or to find a better time to do your habit.
        -> Session3_habit_check_in_end


==== Session3_habit_response_C ====

    Congrats!
    
    Now that some time has passed, do you want to continue trying to improve on this habit or do you want to set up a new one?
    + Continue Improving
        -> Session3_habit_check_in_end
    + Set up new habit
        -> Session3_start_habit_exercise
        
        

==== Session3_start_habit_exercise ====

Great!

I'll remind you about the most effective way to set up a habit.

A habit is usually tied to a goal that we want to achieve. 

Think about a positive goal that you want to achieve. It can be anything like eating healthier, writing more, or being more grateful. It can be something general. We'll focus on making it a SMART goal in the next step.

    + Got my goal
    -> Session3_continue_habit_exercise_part1
    
    + Examples of goals
    -> Session3_examples_of_goals

-> END

==== Session3_examples_of_goals ====

Goals can be anything that you'd want to see in your life

Here are some examples of goals:

Eating healthier

Improving my relationship with my friends

Saving some money


Let's get back to the exercise.

    + Got it. 
    -> Session3_continue_habit_exercise_part1
    

==== Session3_continue_habit_exercise_part1 ====

Awesome! Now, let's make sure this goal is a SMART one.

SMART goals are proven to increase follow up.

SMART stands for Specific, Measurable, Attainable, Realistic and Time sensitive.

    + More info 
    -> Session3_SMART_goals_info
    + Continue exercise 
    -> Session3_continue_habit_exercise_part2
    
    
==== Session3_SMART_goals_info ====

    + Specific
        Focus on one aspect 
        -> Session3_SMART_goals_info
    + Measurable
        Can be tied to a metric
        -> Session3_SMART_goals_info
    + Attainable
        You could achieve them
        -> Session3_SMART_goals_info
    + Realistic
        It would be good for you to achieve
        -> Session3_SMART_goals_info
        
    + Time Sensitive
        It's tied to a deadline
        -> Session3_SMART_goals_info
        
    + Continue exercise 
    -> Session3_continue_habit_exercise_part2
    
    
==== Session3_continue_habit_exercise_part2 ====

Think about your goal. 

Now, narrow it down and focus on a single action or habit that will take you closer to your goal. 

Think about how you will know if you're successful, and think about when you'll do it.

Let me know when you've figured it out.

    + Done
    - 
        That's awesome. 
        Studies have shown that writing down our goals make us more likely to complete them. Write down your goal here:
         +  [User input: Write down goal]
            -> Session3_end_habit_exercise
    

-> END
    
    
==== Session3_end_habit_exercise ====
Okay, got your new habit! Want to add a reminder to your calendar to remind you to do your habit?
    + Yes, please
        [Add calendar reminder process]
        -> End_session_3
    + No, I'm ok
        Alright, just remember to follow up on your new habit!
        -> End_session_3
    

==== Session3_habit_check_in_end ===
Okay, I hope that you've learned of new ways to keep doing your new habit.

Writing things down usually helps us remember. Do you want to write down what you'll do to make sure you follow up on your habit?
        + Yes 
            Great, write it out here: [User input]
            -> End_session_3
        + No 
            No worries, just remember to follow up!
            -> End_session_3

==== End_session_3 ====
Great. I think you've got the hang of creating and following up with new habits. Next time we'll check in to see how you're doing with your new habit and if you want to create another one.

Good luck! See you then!
    -> END
























