Feature: Notification Settings Page

    As a User,
    I want to customize notifications on important updates, messages and events.


    Background:
        Given the User is on notification settings page
        And the User is logged in


    Rule: The User grants notification permissions
        Scenario: A User should be able to customize notification sound settings
            When the User changes the notification sound
            Then the notification should play the sound selected

        Scenario:  User should be able to enable notification vibration
            When the User enables the notification vibration
            Then the notification should arrive with vibration

        Scenario:  User should be able to disable notification vibration
            When the User disables the notification vibration
            Then the notification should arrive without vibration

        Scenario: A User should be able to enable notification light up
            When a User enables notification with lightup
            Then the notification should light up the phone

        Scenario: A User should be able to disable notification light up
            When a User disables notification with lightup
            Then the notification should not light up the phone

        Scenario: A User should be able to toggle notifications on
            Given notifications are turned off
            When they toggle it back on
            Then notifications should be received

        Scenario: A User should be able to toggle notifications off
            Given notifications are turned on
            When a user toggles notifications off
            Then no push notifications should be received
            And the page should hide the notification categories

        Scenario: A User should be able to define specific time period to receive notifications
            Given notifications are turned on
            When a User sets between "<start_time>" and "<end_time>" to receive notifications
            Then the notifications should only alert within the "<start_time>" and "<end_time>"
            And the notifications should not alert outside "<start_time>" and "<end_time>"

            Examples:
                | start_time | end_time |
                | 08:00      | 17:00    |
                | 09:00      | 18:00    |

        Scenario: A User should be able to limit the number of notifications they receive
            When a User sets a limit of "<number>" of notifications
            Then the number of notifications a User receives should be "<number>"

            Examples:
                | number |
                | 5      |
                | 8      |

        Scenario: A User should be able to customize notifications based on categories
            Given notifications are turned on
            When a User opts out of a notification category
            Then the application should no longer send that category as a notification

        Scenario: A User should be able to subscribe to a notification category
            Given notifications are turned on
            When A user subscribes to a notification category
            Then the application should send that category as a notification

        Scenario: A User should be able to unsubscribe to a notification category
            Given notifications are turned on
            When A user unsubscribes to a notification category
            Then the application should not send that category as a notification

        Scenario: A User should be able to recieve notifications based on their role
            Given notifications are turned on
            When A user is asigned a "<role>"
            Then the User should receive a notification based on the "<role>"

            Examples:
                | role  |
                | admin |
                | user  |