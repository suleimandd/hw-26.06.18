--1.	Написать функцию, подсчитывающую среднее арифметическое трех величин.
Create function Averag(@a1 int, @a2 int, @a3 int)
returns float
as
begin
declare @Average float
set @Average = (@a1 + @a2 + @a3) / 3
return @Average
end 


select dbo.Averag(3, 6, 9) as Average


--2.	Написать функцию, вычисляющую текущий возраст сотрудников в зависимости от их даты рождения.
create function Age(@Date_of_birth date, @Current_date date)
returns int
as
begin
declare @Cur_Year int
set @Cur_Year = Year(@Current_date)
declare @Birth_Year int
set @Birth_Year = Year(@Date_of_birth)
return @Cur_Year - @Birth_Year
end

select dbo.Age('1989.01.27', '2018.07.04') as age
