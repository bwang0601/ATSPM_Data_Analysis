select 
[PPT_7-9_12-14_FtUnion].BinStartTime
,[PPT_7-9_12-14_FtUnion].SignalId
,[Signal_Approaches_Phase2,6_FtUnion].ApproachId
,PhaseNumber
,GapOuts
,ForceOffs
,MaxOuts

from [MOE].[dbo].[PPT_7-9_12-14_FtUnion] inner join [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion]
on [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion].ProtectedPhaseNumber = [MOE].[dbo].[PPT_7-9_12-14_FtUnion].PhaseNumber 
and [MOE].[dbo].[Signal_Approaches_Phase2,6_FtUnion].SignalID = [MOE].[dbo].[PPT_7-9_12-14_FtUnion].SignalId

where PhaseNumber in (2,6) and BinStartTime between convert (datetime,'2018-03-01 01:00:00') and convert (datetime,'2018-11-11 23:00:00') 
order by BinStartTime,SignalId,ApproachID