/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [BinStartTime]
      ,[Signals_Approaches_Phase2,6_StateSt].[SignalId]
      ,[Signals_Approaches_Phase2,6_StateSt].[ApproachId]
      ,[TotalCycles]

  FROM [MOE].[dbo].ApproachCycleAggregations inner join [MOE].[dbo].[Signals_Approaches_Phase2,6_StateSt]
  on [MOE].[dbo].ApproachCycleAggregations.ApproachId = [MOE].[dbo].[Signals_Approaches_Phase2,6_StateSt].ApproachID 
  order by BinStartTime, SignalID, ApproachId