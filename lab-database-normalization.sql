# suggestions for additions

#  1:User Table:

#Attributes: user_id (Primary Key), username, password, email, first_name, last_name


CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(45),
    last_name VARCHAR(45));


#  2:Review/Rating Table:

#Attributes: review_id (Primary Key), film_id (Foreign Key to Film), user_id (Foreign Key to User), rating, review_text, review_date

CREATE TABLE Review (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    film_id INT NOT NULL,
    user_id INT NOT NULL,
    rating DECIMAL(2,1) NOT NULL,
    review_text TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (film_id) REFERENCES Film(film_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);


#  3:Genre Table:

#Attributes: genre_id (Primary Key), name

CREATE TABLE Genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);



#  4:Employee Table:

#Attributes: employee_id (Primary Key), first_name, last_name, email, position

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(50) NOT NULL,
    position VARCHAR(50)
    );