/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BinStartTime]
      ,[SignalId]
      ,[ApproachId]
      ,[SplitFailures]
      ,[IsProtectedPhase]
     
  FROM [MOE].[dbo].[SplitFail_7-9_12-14_800N_wSignalID_2018]
where ApproachID in (2043,2045,7662,7664,2047,2048,2051,2052,2152,2151)
  
 order by BinStartTime,SignalId,ApproachId