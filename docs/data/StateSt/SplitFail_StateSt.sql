/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [BinStartTime]
 ,[SignalId]
      ,[ApproachId]
      ,[SplitFailures]
      ,[IsProtectedPhase]
     
  FROM [MOE].[dbo].[SplitFail_7-9_12-14_800N&StateSt_wSignalID]


    where ApproachId in (2038,2041,2059,2061,2075,5253,11042,11044,2080,2082,2116,2131,2133)

	 and BinStartTime between convert (datetime,'2018-03-01 01:00:00') and convert (datetime,'2018-11-11 23:00:00') 


	  order by BinStartTime,SignalId,ApproachId