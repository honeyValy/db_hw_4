/*1*/
select g.name, count(g.name) as singers_count from genres_singers gs 
join genres g on gs.genre_id = g.id 
group by g.name;

/*2*/
select count(*) as songs_count_2019_2020 from songs s 
join albums a on s.album_id = a.id 
where a.year between 2019 and 2020;

/*3*/
select album_id, round(avg(duration)) as avg_song_duration_seconds from songs s 
group by album_id ;

/*4*/
select distinct s2.name as name from singers s2 
where s2.name not in
(select s.name as name  from singers s 
join albums_singers as2 on s.id = as2.singer_id 
join albums a on as2.album_id = a.id 
where a.year = 2020);

/*5*/
select distinct(d.name) as digests_name, s2.name from digests_songs ds 
join digests d on ds.digest_id = d.id 
join songs s on ds.song_id  = s.id
join albums_singers as2 on as2.album_id  = s.album_id 
join singers s2 on as2.singer_id  = s2.id 
where s2.name = 'Ed Sheeran';

/*6*/
select a.name from albums a
join albums_singers as2 on a.id = as2.album_id 
join genres_singers gs on as2.singer_id = gs.singer_id 
group by a.name
having count(gs.id) > 1;

/*7*/
select s.name as songs_name_not_in_digests from songs s 
left join digests_songs ds on s.id = ds.song_id 
where ds.song_id is NULL;

/*8*/
select s3.name as singer_name, s2.duration as the_shortest_duration, s2.name as song_name from songs s2 
join albums_singers as2 on s2.album_id = as2.album_id 
join singers s3 on as2.singer_id = s3.id 
where s2.duration  =
(select MIN(duration)  from songs s) ;

/*9*/
select a.name as albums_with_min_count_songs, count(a.name) as min_count_songs from songs s 
join albums a on s.album_id = a.id
group by a.name 
having count(a.name) = 
(select count(album_id) from songs s 
group by album_id
order by count
limit 1);



