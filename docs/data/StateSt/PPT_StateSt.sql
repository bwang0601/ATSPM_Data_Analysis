/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BinStartTime]
      ,[SignalId]
      ,[ApproachId]
      ,[PhaseNumber]
      ,[GapOuts]
      ,[ForceOffs]
      ,[MaxOuts]
  FROM [MOE].[dbo].[PPT_7-9_12-14_StateStwApproachID]
  order by BinStartTime,SignalId,ApproachId