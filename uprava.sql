drop database if exists uprava;
create database uprava default character set utf8;
# ovu sljede�u liniju copy/psate u command prompt
# PRIPAZITI SAMO NA PUTANJU DATOTEKE
# c:\xampp\mysql\bin\mysql.exe -uedunova -pedunova --default_character_set=utf8 < f:\skriptapp20.sql
use uprava;


create table zupanija(
    sifra int not null primary key auto_increment, 
    naziv varchar(50) not null,
    zupan varchar(50) not null,
    broj_zupanija int not null
);


create table opcina(
    sifra int not null primary key auto_increment, 
    zupanija int not null,
    naziv varchar(50) not null,
    nacelnik varchar(50) not null,
    broj_opcina int not null
);

create table mjesto(
    sifra int not null primary key auto_increment, 
    naziv varchar(50) not null,
    opcina int not null,
    broj_mjesto int not null
);


alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);



/* insert u tablicu zupanija */


insert into zupanija (naziv,zupan,broj_zupanija)
values ('Vukovarsko-srijemska','Božo Galić',179521);

insert into zupanija (naziv,zupan,broj_zupanija)
values ('Splitsko-dalmatinska','Blaženko Boban',454798);

insert into zupanija (naziv,zupan,broj_zupanija)
values ('Zadarska','Božidar Longinć',170017);

insert into zupanija (naziv,zupan,broj_zupanija)
values ('Zagrebačka','Stjepan Kožić',317606);



/* insert u tablicu opcina */

insert into opcina (zupanija,naziv,nacelnik,broj_opcina)
values ('1','Županja','Davor Miličević',7500);

insert into opcina (zupanija,naziv,nacelnik,broj_opcina)
values ('2','Split','Andro Krstulović Opara',170000);

insert into opcina (zupanija,naziv,nacelnik,broj_opcina)
values ('3','Zadar','Zvonimir Vrančić',85000);

insert into opcina (zupanija,naziv,nacelnik,broj_opcina)
values ('4','Zagreb','Milan Bandić',1000000);


/* insert u tablicu mjesto */

insert into mjesto (naziv,opcina,broj_mjesto)
values ('Županja',1,7500);

insert into mjesto (naziv,opcina,broj_mjesto)
values ('Zagreb',2,850000);

insert into mjesto (naziv,opcina,broj_mjesto)
values ('Zadar',3,25000);


# SELECT upiti 

select * from mjesto;

# odabir gradova i prikaz duljine stringa (grada)
select naziv, length(naziv) as duzinagrada from mjesto;

# odaberi grad gdje je broj stanovnika ve�i od 10000
select broj_mjesto from mjesto where broj_mjesto > 10000;

# odaberi naziv grada gdje je naziv grada jednak "�upanja"
select naziv from mjesto where naziv="�upanja";

select * from zupanija;

select zupan from zupanija where sifra < 3;

# odaberi naziv �upanije gdje naziv po�inje s slovom Z
select * from zupanija where naziv like 'Z%';

#
select broj_zupanija from zupanija where broj_zupanija > 150000 and broj_zupanija < 300000;