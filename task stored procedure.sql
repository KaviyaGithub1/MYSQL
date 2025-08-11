use practice;

create table voters (
    VoterID int primary key,
    VoterName varchar(50),
    Age int
);
select * from voters;

DELIMITER $$
Create procedure GetEligibleVoters( In age int, out msg varchar(50))
Begin
   If age >= 18 then
     set msg = 'eligible';
   else
     set msg = 'not eligible' ;
   end If;
   end $$
   
   delimiter ;

   set @msg = ' ';
   call GetEligibleVoters (18,@msg);
   select @msg;
   
   
   
	
     
