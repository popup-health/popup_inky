// Wrong Input Flow

// Flow that should be inserted in case user adds text input instead of using the buttons

This is a sample question.
-> Answer_options

==== Answer_options ====
    * Button answer 1
        -> Continue_conversation
    * Text input
        -> Wrong_input_flow

==== Wrong_input_flow ====
Usually we prefer that you use the buttons to talk to us. Please choose one of the answers above.
    -> Answer_options


==== Continue_conversation ====

The conversation keeps going...

-> DONE