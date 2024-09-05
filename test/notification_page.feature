Feature: Notifications Page

    As a User,
    I want to receive notifications on important updates, messages and events.

    Background:
        Given the User is on the notification page
        And the User is logged in


    Rule: The User grants notification permissions
        Scenario: A User should be able to search notifications based on keywords
            Given a User has many notifications
            And the notifications are displayed in a list
            When the User searches
            Then the application should display matching notifications

        Scenario: A User should be able to see a list of notifications received
            When a User receives a new notification
            Then the notification should appear at the notification page

        Scenario: A User should be able to clear a notification received
            When the notification is displayed
            And the User swipes right on the notification
            Then the notification should be cleared
            And the notification should be moved to history screen

        Scenario: A User should be able to search notifications based on date filter
            Given a User has many notifications
            And the notifications are displayed in a list
            When the User clicks a date filter
            And the "<start_date>" and "<end_date>" is inputted
            Then the application should only display notifications between "<start_date>" and "<end_date>"

            Examples:
                | start_date | end_date   |
                | 11/02/2024 | 24/02/2024 |
                | 11/08/2023 | 15/08/2023 |

        Scenario: A User should be able to see the number of unread notifications
            Given a User has unread notifications
            Then the notification page should display the number of unread notifications

        Scenario: A User should be able to see the "<notification_count>"
            Given "<n>" notifications are received
            Then the "<notification_count> + <n>" should be displayed on the notifications tab

            Examples:
                | notification_count | n |
                | 4                  | 6 |
                | 2                  | 3 |

        Scenario: A User should be able to mark a notification as read
            Given a User clicks on a notification
            Then the notification should be marked as read

        Scenario: A User should view the latest notification first
            Given a User has many notifications
            And the notifications are arranged in a list
            Then the most recent notification should appear at the top of the list

        Scenario: A User should view a new notification as the first item of the list
            Given the notifications are arranged in a list
            And a new notification is received
            Then the new notification should appear at the top of the list

        Scenario: A User should receive notifications when the application is open
            Given the application is open
            And a notification is sent
            When the notification is received
            Then the User should be alerted