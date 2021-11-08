--find the sum of totals in the invoice table grouped by billing state
SELECT SUM(total), billing_state
FROM invoice
GROUP BY billing_state;

--find the average track length by album
SELECT AVG(milliseconds), album_id
FROM track
GROUP BY album_id
ORDER BY 1;

--find a count of how mny albums the artist with the ids 8 and 22 have
SELECT COUNT(*), artist_id
FROM album
WHERE artist_id in (8, 22)
GROUP BY artist_id;