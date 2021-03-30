-- Create a small script to enter 3 real pieces of data
USE posts;

INSERT INTO users (user_id, first_name, last_name, email, phone_number, student_id, request_item, karma_points) Values (1, "John", "Doe", "johndoe@gmail.com", 1234567890, 1234567, "y", 100);

user_id int [pk, not null, unique]
first_name varchar
last_name varchar
email varchar
phone_number int
student_id int
request_item varchar
karma_points int [ref: > karma_points]
