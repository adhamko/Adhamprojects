USE [Adham_SQL_Tuotrial]
GO
/****** Object:  StoredProcedure [dbo].[tmp_employee]    Script Date: 12/5/2023 7:41:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER procedure [dbo].[tmp_employee] 
 @job_title nvarchar(100)
 as 
Create table #temp_employee2(
 jobtitle varchar(50),employeesperjob int ,Avgage int ,avgsalary int )


 insert into #temp_employee2						--insert to temp table from another table )

   select job_title,count(job_title),AVG(AGe),AVG(Salary)				--(selection from salary table)

   from Adham_SQL_Tuotrial.dbo.DEMOGraphics demo
   join Adham_SQL_Tuotrial.dbo.EMPLOYEE_SALARY sal
   on demo.Employee_ID=sal.Employee_ID
   where job_title=@job_title
   group by job_title