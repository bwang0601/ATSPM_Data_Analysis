/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id]
      ,[BinStartTime]
      ,[ApproachId]
      ,[SplitFailures]
      ,[IsProtectedPhase]
  FROM [MOE].[dbo].[ApproachSplitFailAggregations]

  where ApproachId in (2038,2041,2059,2061,2075,5253,11042,11044,2080,2082,2116,2131,2133)
