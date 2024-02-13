-- Recuperate il nome di tutte le tracce e del genere associato.

select track.Name, genre.Name
from track
join genre 
ON track.GenreId= genre.GenreId; 

-- Recuperate il nome di tutti gli artisti che hanno almeno un album nel database. Esistono artisti senza album nel database?

select album.Title, artist.Name
from album
join artist 
ON album.ArtistId= artist.ArtistId;

select album.Title, artist.Name
from album
right join artist 
ON album.ArtistId= artist.ArtistId
where AlbumId is null;



 -- Recuperate il nome di tutte le tracce, del genere associato e della tipologia di media. Esiste un modo per recuperare il nome della tipologia di media?
 
 select track.Name as "titolo", genre.name as "genere", mediatype.name as "formato"
 from track
 left join genre
 on track.GenreId = genre.GenreId
 left join mediatype
 on track.MediaTypeId = mediatype.MediaTypeId;
 
 
 -- Elencate i nomi di tutti gli artisti e dei loro album.
 
 select  artist.Name as "Cantante", album.Title "Titolo album"
from album
join artist 
ON album.ArtistId= artist.ArtistId;
 

 