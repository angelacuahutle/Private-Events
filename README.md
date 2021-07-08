# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Event Attendance
Add the association between the event attendee (also a User) and the event. Call this user the “attendee”. Call the event the “attended_event”. You’ll again need to juggle specially named foreign keys and classes and sources.

Create and migrate all necessary tables and foreign keys. This will require a “through” table since an Event can have many Attendees and a single User (Attendee) can attend many Events… many-to-many.
Create a Controller and corresponding routes for the “through” table that will allow a user to become an “attendee” of an event.

Update the Event’s Show page to display a list of attendees.

Add to the User’s Show page a list of their “attended_events”.

Separate this list of “attended_events” into either events that have occurred in the past or events that will occur in the future. You’ll get some good practice building queries and working with dates. Keep this logic in the view and do not put separate method calls in the controller.
