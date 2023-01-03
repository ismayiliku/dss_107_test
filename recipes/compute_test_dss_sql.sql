SELECT *
  FROM "dbo"."test_dss"
  where creation_date >= DATEADD(DAY,1,EOMONTH(GETDATE(),-2)) and creation_date <= EOMONTH(GetDate(),-1)