-- Get all invoices where the unit_price on the invoice_line is greater than $0.99
SELECT * FROM invoice_line;

SELECT * 
FROM invoice_line
WHERE invoice_line_id IN (
	SELECT invoice_line_id FROM invoice_line WHERE unit_price > .99
);

-- Get all playlist tracks where the playlist name is Music.
SELECT * FROM playlist;
SELECT * 
FROM playlist
WHERE playlist_id IN (
	SELECT playlist_id FROM playlist WHERE name = 'Music'
);

-- Get all track names for playlist_id 5
SELECT * 
FROM playlist
WHERE playlist_id IN (
	SELECT playlist_id FROM playlist WHERE playlist_id = 5
);

-- Get all tracks where the genre is Comedy.
SELECT * 
FROM genre
WHERE genre_id IN (
	SELECT genre_id FROM genre WHERE name = 'Comedy'
);

-- Get all tracks where the album is Fireball.
SELECT * FROM album;
SELECT * 
FROM album
WHERE album_id IN (
	SELECT album_id FROM album WHERE title = 'Fireball'
);

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
-- SELECT * FROM artist;
-- SELECT * FROM track;
SELECT * 
FROM artist
WHERE artist_id IN (
	SELECT artist_id 
  FROM artist 
  WHERE name = 'Queen' IN (
  	SELECT track_id FROM track WHERE composer = 'Queen'
  )
);
-- something like this but not quite