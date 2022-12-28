create table users (
user_id int primary key,
name varchar(225),
email varchar(50),
phone varchar(15),
gender varchar(20),
address varchar (225)
);

INSERT INTO eduwork_db.users
	(user_id, name, email, phone, gender, address)
values
	(1, 'Lucida', 'Lucida@gmail.com', '089612341234', 'female', 'San Jose'),
	(2, 'Holmes', 'Holmes@gmail.com', '089612342314', 'male', 'London'),
	(3, 'Micheal', 'Micheal@gmail.com', '089612344321', 'male', 'New York'),
	(4, 'Albert', 'Albert@gmail.com', '089612387654', 'male', 'New York'),
	(5, 'Ravindran', 'Ravindran@gmail.com', '089612009887', 'male', 'Bangalore'),
	(6, 'Cook', 'Cook@gmail.com', '089612333455', 'male', 'London'),
	(7, 'Stuart', 'Stuart@gmail.com', '089612366778', 'male', 'London'),
	(8, 'Bolt', 'Bolt@gmail.com', '089612312344', 'male', 'New York'),
	(9, 'Fleming', 'Fleming@gmail.com', '089612388798', 'female', 'Brisban'),
	(10, 'Jacks', 'Jacks@gmail.com', '089611122334', 'male', 'Brisban'),
	(11, 'Yearannaidu', 'Yearannaidu@gmail.com', '089613355664', 'female', 'Chennai'),
	(12, 'Sasikant', 'Sasikant@gmail.com', '089612009988', 'female', 'Mumbai'),
	(13, 'Ramanathan', 'Ramanathan@gmail.com', '089612675544', 'male', 'Chennai'),
	(14, 'Avinash', 'Avinash@gmail.com', '08961290876', 'female', 'Mumbai'),
	(15, 'Winston', 'Winston@gmail.com', '089612366666', 'male', 'Brisban'),
	(16, 'Karl', 'Karl@gmail.com', '089612355555', 'female', 'London'),
	(17, 'Shilton', 'Shilton@gmail.com', '08961234444', 'male', 'Torento'),
	(18, 'Charles', 'Charles@gmail.com', '089612343333', 'male', 'Hampshair'),
	(19, 'Srinivas', 'Srinivas@gmail.com', '089612342222', 'male', 'Bangalore'),
	(20, 'Steven', 'Steven@gmail.com', '089612341111', 'female', 'San Jose'),
	(21, 'Karolina', 'Karolina@gmail.com', '089612345555', 'male', 'Torento'),
	(22, 'Martin', 'Martin@gmail.com', '089612346666', 'female', 'Torento'),
	(23, 'Ramesh', 'Ramesh@gmail.com', '089612347777', 'female', 'Mumbai'),
	(24, 'Rangarappa', 'Rangarappa@gmail.com', '089612348888', 'female', 'Bangalore'),
	(25, 'Venkatpati', 'Venkatpati@gmail.com', '089612349999', 'male', 'Bangalore'),
	(26, 'Sundariya', 'Sundariya@gmail.com', '089612341122', 'male', 'Chennai'),
	(27, 'Alex ', 'Alex @gmail.com', '089612341111', 'female', 'London'),
	(28, 'Benjamin', 'Benjamin@gmail.com', '089612341222', 'female', 'Hampshair'),
	(29, 'Mukesh', 'Mukesh@gmail.com', '089612341333', 'female', 'Mumbai'),
	(30, 'Ivan', 'Ivan@gmail.com', '089612341444', 'female', 'Torento');

select name as nama_users,
phone as no_telp,
address as alamat
from users;