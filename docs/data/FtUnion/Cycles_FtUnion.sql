/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [BinStartTime]
      ,[Signal_Approaches_Phase2,6_FtUnion].[SignalId]
      ,[Signal_Approaches_Phase2,6_FtUnion].[ApproachId]
      ,[TotalCycles]

  FROM [MOE].[dbo].[Cycles_7-9_12-14_FtUnion] inner join [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion]
  on [MOE].[dbo].[Cycles_7-9_12-14_FtUnion].ApproachId = [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion].ApproachID 
  order by BinStartTime, SignalID, ApproachId