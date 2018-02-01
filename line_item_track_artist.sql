-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

  SELECT InvoiceLineId, t.name as "Song", ar.Name as "Artist"
  FROM InvoiceLine i 
  JOIN Track t
  ON t.TrackId = i.TrackId
  JOIN Album a 
  ON a.AlbumId = t.AlbumId
  JOIN Artist ar 
  ON ar.ArtistId = a.ArtistId
  ORDER BY t.TrackId;
