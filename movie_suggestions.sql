create database fun;
use fun;
create table movies(movie_name varchar(15) not null ,
movie_genre varchar(25),movie_releaseyear date,
movie_rating float,movie_director varchar(15));
insert into movies values('harrypotter','scifi-magic','1997-07-25',8.2,'chris-columbus');
insert into movies values('oppenheimer','historical','2023-07-21',8.9,'nolan');
insert into movies values('dune','scifi','2023-11-03',8.7,'denis');
insert into movies values('darkknight','action','2010-07-29',9.5,'mattreeves');
insert into movies values('interstellar','adventure','2014-11-07',9.8,'nolan');
insert into movies values('angrymen','drama','1957-04-10',8.1,'sidney');
insert into movies values('godfather','action','1972-04-22',8.7,'francis-ford');
insert into movies values('avatar','scifi-action','2009-12-18',9.2,'james-cameron');
insert into movies values('schindler','historical','1993-12-15',8.3,'steven');
insert into movies values('avengers','superhero','2014-07-25',8.9,'bruce');
select * from movies;

create table webseries(series_name varchar(25),series_rating float,
ott_platform varchar(25),series_seasons int,series_release date);
insert into webseries values('breaking bad',9.5,'Netflix',5,'2008-01-20');
insert into webseries values('game of thrones',9.2,'HBO',8,'2011-04-17');
insert into webseries values('stranger things',8.7,'Netflix',4,'2016-07-15');
insert into webseries values('the boys',8.7,'prime',3,'2019-07-26');
insert into webseries values('the crown',8.6,'Netflix',5,'2016-11-4');
insert into webseries values('money hiest',8.2,'Netflix',5,'2017-05-2');
insert into webseries values('the mandalriane',8.8,'disney',3,'2019-11-12');
insert into webseries values('peaky blinders',8.8,'Netflix',6,'2013-09-12');
insert into webseries values('the dark',9.2,'Netflx',4,'2016-07-25');
insert into webseries values('all of us ar dead',9.0,'Netflix',1,'2019-09-14');
select * from webseries;

create table anime(anime_name varchar(20),no_of_episodes int,director varchar(25));
insert into anime values('one piece',1124,'oda');
insert into anime values('naruto',700,'kishimoto');
insert into anime values('bleach',366,'noriyiki');
insert into anime values('HunterxHunter',148,'hiroshi');
insert into anime values('my hero academia',113,'kenji');
insert into anime values('death note',37,'tetsuro');
insert into anime values('attack on titan',87,'tetsuro');
insert into anime values('hells paradis',8,'hayato');
insert into anime values('steinsgate',24,'hiroshi');
select * from anime;

select upper(movie_name) as moviename,truncate(movie_rating,1) as rating,
lower(movie_genre) as moviegenre, length(movie_director) as moviedirector from movies
where exists(select * from movies where movie_rating between 8.5 and 9.2) order by movie_rating asc;


select series_name,series_rating,series_seasons,series_release from webseries
 where  series_seasons>2 and series_rating limit 2,4;

select anime_name from anime where no_of_episodes>500;
 
 
 
 
 
 
 
