/*1*/
select g.name, count(*) as singers_count from (select g.name from genres_singers gs 
left join genres g on gs.genre_id = g.id) as g
group by g.name
order by singers_count desc;

/*2*/
select count(tr.id) as track_numbers from (select s.id, s.name, a.name, a.year  from songs s 
left join albums a on s.album_id = a.id 
where a.year between 2019 and 2020) as tr;

/*3*/
select s.album_id, round(avg(s.duration)) as avg_track_duration  from songs s 
left join albums a on s.album_id = a.id 
group by s.album_id
order by avg_track_duration;

/*4*/
select distinct s2.name as nane from singers s2 
where s2.name not in
(select s.name as name  from singers s 
join albums_singers as2 on s.id = as2.singer_id 
join albums a on as2.album_id = a.id 
where a.year = 2020);

/*5*/
select d.name as digest_name, s2.name as singer_name from digest d 
join songs s on d.song_id = s.id 
join albums_singers as2 on as2.album_id = s.album_id 
join singers s2 on s2.id = as2.singer_id 
where s2.name = 'Lady Gaga';

/*6*/
select a.name as album_name from albums a 
join albums_singers as2 on a.id = as2.album_id 
where as2.singer_id in
(select s.id as singer_id from genres_singers gs 
join genres g ON gs.genre_id  = g.id 
join singers s on gs.singer_id = s.id 
group by s.id
having count(g.name) > 1);

/*7*/
select s.name as songs_name from songs s 
where s.id not in (select distinct song_id  from digest d );

/*8*/
select s.name from singers s
join albums_singers as2 ON s.id = as2.singer_id  
join songs s2 on s2.album_id  = as2.album_id 
where s2.id = 
(select s2.id as shortest_song_id from songs s2 
where duration = (select MIN(s.duration) from songs s));


/*9*/
select name from albums a 
where id in
(select album_id from songs s 
group by album_id
having count(id) =
(select MIN(t.count_id) from
(select album_id, count(id) as count_id from songs s 
group by album_id) as t));







