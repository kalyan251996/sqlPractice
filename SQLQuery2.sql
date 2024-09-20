 select * from mytable1
 select * from mytable2	
 select mytable1.id as tab1Id, mytable2.id as tab2Id from mytable1 full outer join mytable2 on mytable1.id = mytable2.id