select * from slika;


delete from slika;

# insert novih korisnika

insert into slika (autor,datump,napomena) values ('Pero Periæ','1990-10-30','ovo je neka napomena');

insert into slika (autor,datump,napomena) values ('Janja Janjiæ','2000-10-30','ovo je neka napomena 3');

insert into slika (autor,datump,napomena) values ('Ðurða Ðurðiè','1997-10-30','ovo je neka napomena za Ðurðu');

insert into slika (autor,datump,napomena) values ('Marko Mariæ','1995-08-14','ovo je neka napomena za Marka');

insert into slika (autor,datump,napomena) values ('Ana Aniæ','1980-12-22','ovo je neka napomena za Anu');

insert into slika (autor,datump,napomena) values ('Stjepan Zarez','1999-08-05','ovo je neka napomena za Stjepana');


# pregled korisnika

select * from slika;



# update na tablici slika

update slika set
napomena='OVO JE PROBA NOVA'
where sifra=12;

update slika set
datump="2100-8-19"
where sifra=14;

update slika set
autor='Nira Miriæ'
where sifra=16;


# delete na tablici slika

delete from slika
where sifra=13;

delete from slika
where sifra=14;


delete from slika
where sifra=13;

