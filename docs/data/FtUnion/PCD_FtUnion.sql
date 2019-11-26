/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
      [BinStartTime]
	  ,[Signal_Approaches_Phase2,6_FtUnion].[SignalId]
      ,[Signal_Approaches_Phase2,6_FtUnion].[ApproachId]
	  ,[ArrivalsOnGreen]
      ,[ArrivalsOnRed]
      ,[ArrivalsOnYellow]
      ,[TotalVolume]
      ,[PlatoonRatio]
      ,[TotalTime]
      ,[TotalGreenTime]
      ,[TotalYellowTime]
      ,[TotalRedTime]
	  ,[PercentGreen]
	  ,[IsProtectedPhase]
  FROM [MOE].[dbo].[PCD_7-9_12-14_FortUnion_New] inner join [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion]
  on [MOE].[dbo].[PCD_7-9_12-14_FortUnion_New].ApproachId = [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion].ApproachID 

  order by BinStartTime,SignalId,ApproachId