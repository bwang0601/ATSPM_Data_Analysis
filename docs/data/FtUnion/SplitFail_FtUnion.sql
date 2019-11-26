/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BinStartTime]
      ,[SignalId]
      ,[ApproachId]
      ,[SplitFailures]
      ,[IsProtectedPhase]
     
  FROM [MOE].[dbo].[SplitFail_7-9_12-14_FtUnion_wSignalID]
   where ApproachID in(
  5838,
  6099,
  6043,
  5879,
  335,
  5850,
  6561,
  6005,
  398,
  3169,
  5837,
  6101,
  6042,
  5883,
  338,
  5851,
  6565,
  6007,
  6025,
  3172)
  
 and BinStartTime between convert (datetime,'2018-03-01 01:00:00') and convert (datetime,'2018-11-11 23:00:00') 

 order by BinStartTime,SignalId,ApproachId