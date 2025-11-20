create database thu_vien;
use thu_vien;
create table books (
book_id int primary key,
book_title varchar(100),
book_author varchar(50),
book_publication_year int,
book_pages int
);
create table borrowingrecords (
record_id int primary key,
book_id int,
foreign key (book_id) references books(book_id),
borrow_date date
);
select count(*) as total_books 
from books;
select sum(book_pages) as total_pages_in_library
from books;
select avg(book_pages) as average_pages_per_book
from books;
select max(book_publication_year) as oldest_book_year
from books;
select min(book_publication_year) as newest_book_year
from books;
select min(borrow_date) as first_borrow_date
from borrowingrecords;
select count(*) as books_after_2000
from books
where book_publication_year > 2000;


