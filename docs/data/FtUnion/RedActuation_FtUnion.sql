/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [BinStartTime]
      ,[Signal_Approaches_Phase2,6_FtUnion].[SignalId]
      ,[Signal_Approaches_Phase2,6_FtUnion].[ApproachId]
      ,[SevereRedLightViolations]
      ,[TotalRedLightViolations]
      ,[IsProtectedPhase]
  FROM [MOE].[dbo].[RedActivation_7-9_12-14_FtUnion] inner join [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion]
  on [MOE].[dbo].[RedActivation_7-9_12-14_FtUnion].ApproachId = [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion].ApproachID 

  order by BinStartTime,SignalId,ApproachId