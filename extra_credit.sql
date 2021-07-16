-- Artist Table

-- Select 10 artists in reverse alphabetical order.

select name from artist
order by name desc
limit 10

-- Select all artists that start with the word ‘Black’.

select name from artist
where name like 'Black%'

-- Select all artists that contain the word ‘Black’.

select name from artist
where name like '%Black%'

-- Employee Table

-- Find the birthdate for the youngest employee.

select MAX(birth_date) from employee

-- Find the birthdate for the oldest employee.

select MIN(birth_date) from employee

-- Invoice Table

-- Count how many orders were in CA, TX, or AZ (use IN).

select count(invoice_id) from invoice
where billing_state IN('CA','TX','AZ')

-- Get the average total of the orders.

select AVG(total) from invoice --avg total count

select AVG(unit_price * quantity) from invoice_line -- avg total price

-- More Join Queries

-- Get all playlist_track track_ids where the playlist name is Music.

select * from playlist_track pl
join playlist p
on pl.playlist_id = p.playlist_id
where p.name = 'Music'

---or
select track_id from playlist_track pl
join playlist p
on pl.playlist_id = p.playlist_id
where p.name = 'Music'

-- Get all track names for playlist_id 5.

select t.name
from track t
join playlist_track p
on t.track_id = p.track_id
where playlist_id = 5

-- Get all track names and the playlist name that they’re on ( 2 joins ).

select t.name as song, p.name as playlist_name
from track t
join playlist_track pl
on pl.track_id = t.track_id
join playlist p
on pl.playlist_id = p.playlist_id;


-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).

select t.name as song_name, a.title as album_name 
from track t join  genre g on g.genre_id = t.genre_id
join album a on a.album_id = t.album_id

-- Data with Python¶
-- In process.py, write another function that prints out all the melon orders that delivered over 10 melons.
--checked on replit
order = ('watermelon','watermelon','watermelon','cantaloupe','cantaloupe','cantaloupe','cantaloupe','honeydoo','honeydew','honeydue','honeydyuu')

def more_than_ten(order):
     if len(order) > 10:
         print (order)


more_than_ten(order)