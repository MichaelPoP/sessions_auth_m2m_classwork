## back_to_college

# Task 

- We're going to take a step back from auth and focus on setting up a many to many. 
- This app mimics a college course enrollment system. Students can see a list of courses and the students that are enrolled in them. At the same time students can enroll for many different courses....this means we need a many to many

## Getting started

- Generate a new rails application
- Your tables should include a students (who should all have a name and age), courses (which should also have a name) and enrollments (which is the join table)
- Before you migrate, set up the correct associations in your model. Also make sure that there is a name for each student (validate presence) and that the name for each student is unique 
- Run your migrations and test that you have correctly set up your associations in rails console
- Use resources to generate your routes.

## Next steps

- Get full CRUD working for Students and Courses. For now, this means that anyone can add, see, update and delete any course or any student. 
- Make sure to include the correct parameters for courses and students
- When courses and students are created, updated or deleted, include a flash message
- If there are any errors when creating a course or a student, be sure to display them.

## Finishing up

- Once you have full CRUD, allow students to enroll for multiple courses. 
- The student should see a list of all of the courses as checkboxes and choose whichever ones they want to sign up for. If the student is already enrolled in a course, the checkbox should be checked.
- HINT - using simple form is going to make your life **MUCH** easier. Add the gem, bundle and run `rails g simple_form:install` to get started and then look at how to use `f.association` and include it as a checkbox.
- If a Student has already signed up for the course, ensure there are not duplicate signups when saving their courses multple times.
- If a student unchecks a course, make sure the enrollments table also reflects that the enrollment was removed. You can always check in terminal/rails console to see if these changes have been made
- __this is going to be challenging__ so do not get discouraged if you can not solve it - we will review how this is done.
- If you have done this, for each student, show their enrollments and for each course, show their students.


### Bonus

- Add authentication to this example - give Students a username and password and build a login and signup form
- Pat yourself on the back if you get here, it's been a long day :)



