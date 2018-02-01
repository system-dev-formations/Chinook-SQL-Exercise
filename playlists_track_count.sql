--  Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table


SELECT p.Name, COUNT(pt.TrackId) as "Number Of Tracks"
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY p.name;
