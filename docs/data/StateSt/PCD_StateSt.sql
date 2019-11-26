/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [BinStartTime]
      ,[Signals_Approaches_Phase2,6_StateSt].SignalId
	  ,[Signals_Approaches_Phase2,6_StateSt].ApproachId
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
  FROM [MOE].[dbo].[ApproachPcdAggregations] inner join MOE.dbo.[Signals_Approaches_Phase2,6_StateSt]
  on MOE.dbo.ApproachPcdAggregations.ApproachId = MOE.dbo.[Signals_Approaches_Phase2,6_StateSt].ApproachID

  order by SignalID