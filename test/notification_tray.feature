Feature: Notification Tray

    As a User,
    I want to receive notifications on important updates, messages and events.


    Background:
        Given the User is on notification tray in the mobile device
        And the User is logged in to the application
        
    Rule: The User grants notification permissions
        Scenario: A User should be able to clear a notification in the notification tray
            Given a notification is displayed to the User
            When the User clears the notification
            Then the notification should not be displayed in the notification tray
            But the notification should be displayed in the notification page of the application

        Scenario: A User should be able to clear all notifications
            Given multiple notifications are displayed to the user
            When the User clears all the notifications
            Then the notifications should not be displayed in the notification tray
            But the notifications should be displayed in the notification page of the application

        Scenario: A user should be able to receive multiple notifications at the same time
            Given multiple notifications of events are sent
            When the notifications are received
            Then all notifications should appear in the notification tray

        Scenario: A User should be able to receive notifications of multiple categories
            Given a User is subscribed to multiple categories
            When notifications from different categories are triggered
            Then they should all be received

        Scenario: A User should receive a notification instantly in real-time
            Given  a notification is sent
            And the User is online
            And the notification is received
            Then the notification should be displayed immediately

        Scenario: A User should receive multiple notifications instantly in real-time
            Given  multiple notifications are sent
            And the User is online
            And the notifications are received
            Then the notifications should be displayed immediately

        Scenario: A User should be notified when they are tagged in a comment
            Given the User is tagged by another user in a comment
            Then the User should be notified immediately

        Scenario: A User should be able to preview notifications
            Given a User receives a notification
            When the User expands the notification
            Then the notification should be expanded to show a preview
            And the notification should display the full content

        Scenario: A User should receive notifications when the app is closed
            Given the application is closed
            And a notification is sent
            When the notification is received
            Then the User should be alerted

        Scenario: A User should be able to view notifications with media
            Given a notification is sent
            And the notification contains media content
            When the notification is displayed
            Then the User should be able to see the media content in the notification

        Scenario: A User should be able to tap on link in the notification and be redirected
            Given a notification is sent
            And the notification contains a link
            When the notification is displayed
            And the User taps the link
            Then the link should redirect the User to the relevant application

        Scenario: A User should be able to receive notifications sent when offline
            Given a notification is sent
            And the User is offline
            When the User gets back online
            Then the User should receive notification sent

        Scenario: A User should be able to receive notifications sent when airplane mode is disabled
            Given a notification is sent
            And the User enabled airplane mode
            When the User disables airplane mode
            Then the User should receive notification sent