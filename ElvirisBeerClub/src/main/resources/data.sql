/*
INSERT CERVEZAS
*/
INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Punk IPA','Brewdog','Cerveza de alta fermentación de estilo IPA con intensa presencia de diferentes variedades de lúpulo del nuevo mundo.Esta es la cerveza perfecta para disfrutar con tus amigos.',4.00,3.60,'punk.jpg',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Imparable IPA','Basqueland','Tiene un cuerpo medio y rubio. Los lúpulos son los protagonistas en esta cerveza. Con aromas a papaya, guayaba, piña y sabor bad-ass m+therf+cker.',4.50,4.05,'imparable.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('IPA 8','Dougall´s','Cerveza rubia de estilo IPA, de edición limitada con mucho lúpulo, cuya receta va cambiando a medida que contamos con lúpulos nuevos.Esta es la cerveza perfecta para disfrutar con tus amigos.',4.50,4.05,'ipa8.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Dead Pony','Breowdog','Dry hopping a base de lúpulos de las variedades Simcoe, Citra y Mosaic. Esta es el a cerveza perfecta para disfrutar con tus amigos de una tarde perfecta. No te puedes quedar si provarla!!',4.00,3.60,'dead.png',NEXTVAL('hibernate_sequence'));

/*
INSERT SOCIO
*/

INSERT INTO SOCIO 
    (DNI,NOMBRE,APELLIDOS,EMAIL,ADMIN,CUOTA,FECHA_ALTA,PASSWORD,ID)
VALUES
    ('23548596H','Miguel','Campos Rivera','campos@salesianos.edu',false,20.00,'2018-06-21','1111',NEXTVAL('hibernate_sequence'));

INSERT INTO SOCIO 
    (DNI,NOMBRE,APELLIDOS,EMAIL,ADMIN,CUOTA,FECHA_ALTA,PASSWORD,ID)
VALUES
    ('23789654Q','Luis Miguel','Lopez Magañas','usuario@usuario.com',false,20.00,'2018-11-29','1234',NEXTVAL('hibernate_sequence'));

INSERT INTO SOCIO 
    (DNI,NOMBRE,APELLIDOS,EMAIL,ADMIN,CUOTA,FECHA_ALTA,PASSWORD,ID)
VALUES
    ('26252198H','Jesus','Ceacero Jimeno','ceacero@salesianos.edu',true,20.00,'2018-1-1','1111',NEXTVAL('hibernate_sequence'));

INSERT INTO SOCIO 
    (DNI,NOMBRE,APELLIDOS,EMAIL,ADMIN,CUOTA,FECHA_ALTA,PASSWORD,ID)
VALUES
    ('23963211F','Angel','Naranjo González','admin@admin.com',true,20.00,'2019-2-2','admin',NEXTVAL('hibernate_sequence'));

insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Liuka', 'Wiper', 'lwiper0@independent.co.uk', false, 20, '4768', '2018-07-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Marcy', 'Leile', 'mleile1@nature.com', true, 20, '4805', '2018-07-13');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Cherice', 'Perris', 'cperris2@va.gov', true, 20, '0850', '2019-02-17');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Tyler', 'Meugens', 'tmeugens3@blogspot.com', true, 20, '5736', '2018-06-04');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Melisande', 'Clews', 'mclews4@mozilla.com', true, 20, '4410', '2019-03-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ward', 'Loade', 'wloade5@shop-pro.jp', false, 20, '4983', '2018-06-22');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Saunders', 'Fosken', 'sfosken6@biglobe.ne.jp', false, 20, '9623', '2019-01-20');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Siobhan', 'Itzhak', 'sitzhak7@mayoclinic.com', false, 20, '0111', '2019-04-06');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Diena', 'Petkens', 'dpetkens8@shutterfly.com', true, 20, '0304', '2018-07-05');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Garrick', 'Woltman', 'gwoltman9@devhub.com', false, 20, '5725', '2018-10-19');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Leigh', 'Waddell', 'lwaddella@nytimes.com', false, 20, '6149', '2019-01-14');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Thibaud', 'Robez', 'trobezb@com.com', true, 20, '5715', '2018-08-05');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Willetta', 'Dixon', 'wdixonc@artisteer.com', false, 20, '3807', '2019-02-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Clevie', 'Risson', 'crissond@shinystat.com', false, 20, '3666', '2018-09-17');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Benedicta', 'Abden', 'babdene@meetup.com', false, 20, '7624', '2018-06-08');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Mozelle', 'Morgen', 'mmorgenf@privacy.gov.au', true, 20, '7570', '2019-01-28');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Glynn', 'Covendon', 'gcovendong@seattletimes.com', true, 20, '9789', '2018-10-19');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Tully', 'Longley', 'tlongleyh@mlb.com', true, 20, '7883', '2018-06-12');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Faustina', 'Rops', 'fropsi@canalblog.com', false, 20, '0040', '2018-06-12');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Brandon', 'Miettinen', 'bmiettinenj@live.com', true, 20, '9220', '2019-03-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ber', 'Toomey', 'btoomeyk@sun.com', true, 20, '4352', '2018-12-12');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Geri', 'Marcum', 'gmarcuml@google.com.hk', true, 20, '8655', '2018-07-09');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Mona', 'Wince', 'mwincem@senate.gov', false, 20, '0447', '2018-06-17');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Dulcine', 'Tice', 'dticen@unblog.fr', false, 20, '0171', '2018-10-30');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Marlee', 'Rowntree', 'mrowntreeo@twitpic.com', true, 20, '9904', '2019-02-22');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Brietta', 'Harrington', 'bharringtonp@scientificamerican.com', true, 20, '8155', '2018-11-14');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ainsley', 'Edridge', 'aedridgeq@exblog.jp', false, 20, '5652', '2018-12-29');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Babara', 'Benley', 'bbenleyr@cyberchimps.com', false, 20, '5580', '2018-06-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Vinson', 'Gerardi', 'vgerardis@google.ru', false, 20, '2972', '2018-08-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Edgard', 'Berthomier', 'eberthomiert@redcross.org', true, 20, '0541', '2019-03-07');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Halsy', 'Liquorish', 'hliquorishu@weather.com', true, 20, '7478', '2018-11-28');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Adan', 'Biles', 'abilesv@google.ru', false, 20, '3241', '2019-03-13');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Nonnah', 'Gookes', 'ngookesw@amazon.com', true, 20, '4665', '2019-05-06');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Bernhard', 'Phalip', 'bphalipx@woothemes.com', false, 20, '0811', '2018-06-26');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Muhammad', 'Grastye', 'mgrastyey@quantcast.com', true, 20, '7797', '2018-08-09');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Aloysius', 'Flacknell', 'aflacknellz@ucoz.ru', false, 20, '3258', '2018-10-09');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Thorndike', 'Mendonca', 'tmendonca10@blog.com', true, 20, '5172', '2019-01-06');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Sindee', 'Shortell', 'sshortell11@cnn.com', true, 20, '0505', '2019-02-28');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Nike', 'Poupard', 'npoupard12@imgur.com', false, 20, '9644', '2018-08-08');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Rochette', 'Blabber', 'rblabber13@baidu.com', true, 20, '9497', '2018-12-15');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Scotty', 'Seaborne', 'sseaborne14@zimbio.com', false, 20, '3820', '2019-03-12');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Alicia', 'Battie', 'abattie15@pen.io', false, 20, '3413', '2018-10-14');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Dollie', 'Telezhkin', 'dtelezhkin16@harvard.edu', true, 20, '7900', '2019-03-11');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ramsay', 'Ladloe', 'rladloe17@goodreads.com', true, 20, '7459', '2019-02-20');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Jeanne', 'Dilleston', 'jdilleston18@wufoo.com', true, 20, '7128', '2018-09-13');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Cassi', 'Hemphrey', 'chemphrey19@homestead.com', true, 20, '9136', '2018-06-04');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Drona', 'Devon', 'ddevon1a@github.io', false, 20, '7879', '2019-04-28');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Selinda', 'Whitham', 'swhitham1b@goo.ne.jp', false, 20, '9638', '2019-05-03');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Kippie', 'Kilban', 'kkilban1c@g.co', true, 20, '3566', '2019-05-20');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Lizette', 'Cleal', 'lcleal1d@usa.gov', false, 20, '4005', '2018-08-31');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Byrle', 'Hazell', 'bhazell1e@deliciousdays.com', true, 20, '4419', '2018-09-07');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Dannie', 'Haighton', 'dhaighton1f@webnode.com', false, 20, '6288', '2018-12-04');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Lucais', 'Andrieux', 'landrieux1g@tinypic.com', false, 20, '0688', '2019-03-01');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Findlay', 'Kimberley', 'fkimberley1h@bloglovin.com', true, 20, '8261', '2018-10-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Fiann', 'Guthrie', 'fguthrie1i@economist.com', false, 20, '3806', '2018-11-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ardyth', 'Witts', 'awitts1j@upenn.edu', false, 20, '5436', '2019-02-02');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Maribel', 'Hursey', 'mhursey1k@mapquest.com', true, 20, '3743', '2018-07-11');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Valeda', 'Ferrone', 'vferrone1l@chicagotribune.com', true, 20, '9814', '2018-08-17');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ferris', 'Sturton', 'fsturton1m@desdev.cn', true, 20, '3496', '2018-07-09');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Butch', 'Heffernon', 'bheffernon1n@dot.gov', true, 20, '3684', '2018-06-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Kristopher', 'Wiggall', 'kwiggall1o@multiply.com', false, 20, '0021', '2018-06-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Willy', 'Bridle', 'wbridle1p@google.ru', false, 20, '5680', '2018-10-14');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Kary', 'D''Emanuele', 'kdemanuele1q@addtoany.com', false, 20, '2121', '2018-10-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ludvig', 'Dodell', 'ldodell1r@wp.com', true, 20, '4385', '2018-11-23');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Shoshana', 'Frigout', 'sfrigout1s@slideshare.net', false, 20, '5127', '2018-07-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Padriac', 'MacCulloch', 'pmacculloch1t@canalblog.com', true, 20, '3522', '2019-01-21');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Sonny', 'Jarvis', 'sjarvis1u@ucsd.edu', false, 20, '0670', '2018-12-24');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Lammond', 'Zimmermeister', 'lzimmermeister1v@arstechnica.com', false, 20, '2915', '2018-12-01');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Kienan', 'Brook', 'kbrook1w@gizmodo.com', true, 20, '0328', '2018-07-03');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ashton', 'McKirdy', 'amckirdy1x@vistaprint.com', true, 20, '6363', '2019-04-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Tobiah', 'MacGillavery', 'tmacgillavery1y@wufoo.com', false, 20, '5317', '2019-05-04');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Fawne', 'Hotchkin', 'fhotchkin1z@hugedomains.com', false, 20, '7161', '2019-03-22');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Kenny', 'Garr', 'kgarr20@ed.gov', false, 20, '8008', '2019-05-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Mariya', 'Capozzi', 'mcapozzi21@trellian.com', true, 20, '4007', '2018-06-16');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Davey', 'Dingsdale', 'ddingsdale22@123-reg.co.uk', false, 20, '3886', '2018-06-08');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Miriam', 'Radden', 'mradden23@mapy.cz', true, 20, '1635', '2018-10-03');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Aimee', 'Twells', 'atwells24@ameblo.jp', true, 20, '1327', '2018-08-22');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Shirlee', 'Maccrea', 'smaccrea25@rediff.com', true, 20, '8299', '2019-04-07');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Carmina', 'Donaldson', 'cdonaldson26@clickbank.net', false, 20, '8850', '2019-02-25');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Arther', 'Lionel', 'alionel27@merriam-webster.com', false, 20, '7470', '2018-11-22');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ferrel', 'Rootes', 'frootes28@merriam-webster.com', false, 20, '8471', '2019-02-19');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Lorilyn', 'Trenouth', 'ltrenouth29@businessweek.com', true, 20, '4431', '2019-01-28');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Drucy', 'Flann', 'dflann2a@phoca.cz', false, 20, '1829', '2018-06-26');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Karmen', 'Cowlam', 'kcowlam2b@microsoft.com', false, 20, '7889', '2018-08-14');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Vassili', 'Desborough', 'vdesborough2c@google.com.br', false, 20, '5160', '2018-07-06');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Horatio', 'Maseyk', 'hmaseyk2d@wikimedia.org', false, 20, '7987', '2018-12-26');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ranice', 'Fermer', 'rfermer2e@businesswire.com', false, 20, '1013', '2019-01-03');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Lee', 'Edel', 'ledel2f@cmu.edu', true, 20, '1479', '2019-04-06');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Nedda', 'Pattillo', 'npattillo2g@cmu.edu', true, 20, '5330', '2018-12-02');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Francklyn', 'Sowter', 'fsowter2h@economist.com', true, 20, '5597', '2018-08-18');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Ed', 'Livick', 'elivick2i@yandex.ru', false, 20, '0651', '2019-04-02');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Merle', 'Donovan', 'mdonovan2j@surveymonkey.com', true, 20, '1046', '2018-10-24');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Leta', 'Normandale', 'lnormandale2k@google.ca', true, 20, '5821', '2018-12-01');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Elka', 'Pheazey', 'epheazey2l@reverbnation.com', false, 20, '3756', '2019-03-12');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Yetta', 'Ansteys', 'yansteys2m@ucoz.com', false, 20, '0609', '2018-10-08');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Molli', 'Luto', 'mluto2n@icq.com', false, 20, '8464', '2018-06-10');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Celestyn', 'Lunbech', 'clunbech2o@altervista.org', true, 20, '6030', '2018-06-04');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Lindsy', 'Rayment', 'lrayment2p@omniture.com', true, 20, '5315', '2018-12-23');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Skippie', 'Charlon', 'scharlon2q@washington.edu', true, 20, '5907', '2018-05-28');
insert into SOCIO (ID, NOMBRE, APELLIDOS, EMAIL, ADMIN, CUOTA, PASSWORD, FECHA_ALTA) values (NEXTVAL('hibernate_sequence'), 'Skylar', 'Trew', 'strew2r@netscape.com', true, 20, '6892', '2018-12-08');

/*
INSERT EVENTO
*/

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata BrewDog','2018-10-2',12.00,25,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata Dougall´s','2018-5-24',15.00,25,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata Basqueland','2019-7-29',11.00,25,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Viaje a Festival de Ceveza','2019-10-22',17.00,20,'Viaje a festival de cervezas e Granada',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cervezas del Pueblo','2019-6-5',10.00,10,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));  

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cerveaza españolas.','2018-12-12',12.00,30,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cerveaza belgas.','2019-3-25',17.00,20,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cerveaza Argentinas.','2019-8-28',11.00,25,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cerveaza europes.','2019-1-10',14.00,30,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cerveaza alemanas.','2018-7-7',16.00,25,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

INSERT INTO EVENTO 
    (NOMBRE,FECHA,PRECIO,N_PLAZAS,DESCRIPCION,ID)
VALUES
    ('Cata cerveaza estadounidenses.','2018-12-12',19.00,20,'Cata de cerveza artesanales con catering',NEXTVAL('hibernate_sequence'));

/*
INSERT GASTO
*/
INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (110, 'Catering', 156.10,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (118, 'Catering', 175.30,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (109, 'Catering', 200.15,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (119, 'Catering', 136.60,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (114, 'Catering', 310.00,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (117, 'Catering', 295.50,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (115, 'Catering', 175.25,NEXTVAL('hibernate_sequence'));

INSERT INTO GASTO 
    (EVENTO_ID,NOMBRE,COSTE,ID)
VALUES
    (110, 'Catering', 56.00,NEXTVAL('hibernate_sequence'));

/*
INSERT GASTO
*/

INSERT INTO INGRESO_CUOTA(FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,5,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-11-29',20.00,6,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-1-1',20.00,7,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2019-1-1',20.00,7,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2019-2-2',20.00,8,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-11-29',20.00,9,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,10,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,11,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,12,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,13,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,14,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,15,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,16,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,17,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,18,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,19,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,20,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,21,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,22,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,23,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,24,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,25,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,26,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,27,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,28,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,29,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,30,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,31,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,32,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,33,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,34,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,35,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,36,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,37,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,38,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,39,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,40,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,41,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,42,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,43,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,44,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,45,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,46,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,47,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,48,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,49,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,50,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,51,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,52,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,53,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,54,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,55,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,56,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,57,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,58,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,59,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,60,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,61,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,62,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,63,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,64,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,65,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,66,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,67,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,68,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,69,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,70,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,71,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,72,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,73,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,74,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,75,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,76,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,77,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,78,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,79,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,80,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,81,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,82,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,83,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,84,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,85,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,86,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,87,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,88,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,89,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,90,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,91,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,92,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,93,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,94,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,95,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,96,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,97,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,98,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,99,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,100,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,101,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,102,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,103,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,104,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,105,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,106,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,107,NEXTVAL('hibernate_sequence'));
INSERT INTO INGRESO_CUOTA (FECHA,CUANTIA,SOCIO_ID,ID) VALUES ('2018-06-21',20.00,108,NEXTVAL('hibernate_sequence'));




/* Añadir reservas evento */

INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (13,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (19,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (20,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (21,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (22,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (24,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (25,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (27,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (28,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (29,109);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (13,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (19,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (20,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (21,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (22,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,110);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (13,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (19,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (20,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (21,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (22,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (24,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (25,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (26,118);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (13,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (19,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (20,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (21,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (22,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (24,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (25,114);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (13,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (19,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (20,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (21,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (22,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (24,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (25,119);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (13,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (19,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (20,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (21,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (22,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (23,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (24,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (25,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (26,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (27,117);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (14,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (15,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (16,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (17,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (18,115);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (5,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (6,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (7,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (8,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (9,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (10,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (11,113);
INSERT INTO SOCIO_EVENTOS (SOCIO_ID,EVENTO_ID) VALUES (12,113);





/*Mas cervezas*/

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Go To IPA','Stone','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.00,3.60,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Elvis Juice','Brewdog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.40,4.00,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Jack Hammer','Brewdog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.00,3.60,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Almazara','Almazara','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.40,4.00,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Jane Pilsen','Aceitunera','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',5.00,4.60,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Sierra nevada','Sierra nevada','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.95,4.50,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Aupa PALE ALE','Basqueland','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',3.95,3.30,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('942','Dougla´s','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.00,3.60,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('5 AM','Brewdog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.35,4.00,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Arraum Amber ALE','Basqueland','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.50,4.30,'dead.png',NEXTVAL('hibernate_sequence'));

INSERT INTO CERVEZA 
    (NOMBRE,MARCA,DESCRIPCION,PVP,PRECIO_SOCIO,FOTO,ID)
VALUES
    ('Tripel Karmelier','Basqueland','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry´s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',4.50,4.30,'dead.png',NEXTVAL('hibernate_sequence'));


