/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [BinStartTime]
      ,[Signals_Approaches_Phase2,6_StateSt].[SignalId]
      ,[Signals_Approaches_Phase2,6_StateSt].[ApproachId]
      ,[SevereRedLightViolations]
      ,[TotalRedLightViolations]
      ,[IsProtectedPhase]
  FROM [MOE].[dbo].ApproachYellowRedActivationAggregations inner join [MOE].[dbo].[Signals_Approaches_Phase2,6_StateSt]
  on [MOE].[dbo].ApproachYellowRedActivationAggregations.ApproachId = [MOE].[dbo].[Signals_Approaches_Phase2,6_StateSt].ApproachID 

     where [Signals_Approaches_Phase2,6_StateSt].ApproachId in (2038,2041,2059,2061,2075,5253,11042,11044,2080,2082,2116,2131,2133)

  order by BinStartTime,SignalId,ApproachId