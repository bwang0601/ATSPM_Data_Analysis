/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [BinStartTime]
      ,Signals_Approaches_Phases_800N.[SignalId]
      ,Signals_Approaches_Phases_800N.[ApproachId]
      ,[TotalCycles]

  FROM [MOE].[dbo].[Cycles_7-9_12-14_800N] inner join [MOE].[dbo].Signals_Approaches_Phases_800N
  on [MOE].[dbo].[Cycles_7-9_12-14_800N].ApproachId = [MOE].[dbo].Signals_Approaches_Phases_800N.ApproachID 

  where Signals_Approaches_Phases_800N.ApproachId in (2043,2045,7662,7664,2047,2048,2051,2052,2152,2151)

  order by BinStartTime, SignalID, ApproachId