SELECT 
    "creation_date",
    "office"
  FROM "dbo"."test_dss" "__input_table"
  WHERE CASE 
      WHEN "creation_date" IS NULL THEN false
      ELSE ("creation_date" > '2022-12-01 00:00:00' AND "creation_date" IS NOT NULL) AND ("creation_date" < '2023-01-01 00:00:00' AND "creation_date" IS NOT NULL)
    END