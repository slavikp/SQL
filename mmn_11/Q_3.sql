insert into Lawyer values 
('danny','23.4.1994', 700,'23.4.1994'),
('jo'   ,'15.6.2004', 500,'22.8.2010'),
('sam'  ,'12.12.2010',300,NULL       ),
('Helen','23.4.1994', 700,'23.4.1994'),
('amy'  ,'11.11.2009',500,'1.1.2014' ),
('rose' ,'7.3.2016',  300,NULL       );

insert into Client values 
('amy'			,'111-111111','123 road1, city1' ),
('jack'			,'222-222222','the hill'         ),
('bill'			,'333-333333','456 road 3, city2'),
('jen'			,'444-444444','543 road 4, city1'),
('humpty dumpty','123-456789','wall in kingdom'  );

insert into File values 
(1,'amy vs. dave','divorce file','27.2.2007','amy','danny'),	
(2,'jack and jill','problems on the hill',NULL,'jack','amy'),	
(3,'file 3','company',NULL,'bill','Helen'),	
(4,'file 4','house',NULL,'jen','danny'),	
(5,'file 5','description',NULL,'bill','jo'),	
(6,'file 6','description 2',NULL,'bill','jo'),	
(7,'jack is black','coloring','23.4.2016','jack','Helen'),	
(8,'file 2','house','11.11.2013','jack','jo'),	

(10,'the great fall of humpty dumpty','injury','30.6.2016','humpty dumpty','danny');

insert into Lonfile values 
(2,    'jo','resp1'),
(2, 'Helen','resp2'),
(2,  'rose','resp3'),
(3,   'amy','resp1'),
(3,    'jo','resp2'),
(3,   'sam','resp3'),
(3,  'rose','resp3'),
(4,   'sam','resp1'),
(5,   'sam','resp2'),
(5,   'amy','resp1'),
(10,'Helen','co-rep'),
(10,  'sam','getting evidence'),
(10, 'rose','support'),
(3, 'danny','supervising'),
(7,    'jo','resp1');

insert into billing values 
(1,'12.1.2007','danny',6,'all'),
(4,'13.5.2016','sam',  5,'aaa'),
(4,'20.2.2016','danny',5,'bbb'),
(2,'12.5.2016','amy',  4,'aaa'),
(2,'20.5.2016','amy',  5,'bbb'),
(2,'10.6.2016','Helen',3,'ccc'),
(2,'12.6.2016','rose', 4,'ccc'),
(3,'7.3.2016' ,'Helen',5,'aaa'),
(3,'10.4.2016','jo',5,'aaa'),
(4,'12.5.2016','sam',2,'aaa'),
(5,'10.3.2016','jo',7,'bbb'),
(10,'10.4.2016','danny',3,'meeting Client'),
(10,'2.5.2016','rose',6,'evidence'),
(10,'29.5.2016','sam',4,'evidence'),
(10,'1.6.2016','Helen',6,'prepare court case'),
(10,'10.6.2016','rose',3,'prepare court case'),
(10,'28.6.2016','danny',7,'court'),
(10,'28.6.2016','Helen',7,'court'),
(10,'30.6.2016','danny',1,'payment and close case');
