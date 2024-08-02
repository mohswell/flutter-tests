Feature: Tasks in the to-do list

  # Positive scenarios
  Scenario: User should be able to add a new task
        Given the app is running
        When the user adds a new task "Buy groceries"
        Then the task "Buy groceries" should be added to the task list

    Scenario: User should mark a task complete
        Given the app is running
        And there is a task "Buy groceries" displayed
        When the user taps the task "Buy groceries"
        Then the task "Buy groceries" should be marked as completed
        
        # Negative scenarios
        Scenario: User should not be able to add an empty task
              Given the app is running
              When the user adds an empty task
              Then an error message should be displayed

        Scenario: User should not be able to mark a non-existent task complete
              Given the app is running
              And there are no tasks displayed
              When the user taps a non-existent task
              Then an error message should be displayed

        # Edge cases
        Scenario: User should be able to add a task with special characters
              Given the app is running
              When the user adds a new task "Go to the @#$% store"
              Then the task "Go to the @#$% store" should be added to the task list

        Scenario: User should be able to add multiple tasks
              Given the app is running
              When the user adds a new task "Task 1"
              And the user adds a new task "Task 2"
              Then both tasks should be added to the task list

        Scenario: User should be able to delete a task
              Given the app is running
              And there is a task "Task 1" displayed
              When the user deletes the task "Task 1"
              Then the task "Task 1" should be removed from the task list