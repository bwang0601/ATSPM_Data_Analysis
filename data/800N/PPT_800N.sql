select BinStartTime
,Signals_Approaches_Phases_800N.SignalId
,Signals_Approaches_Phases_800N.ApproachId
,PhaseNumber
,GapOuts
,ForceOffs
,MaxOuts

from [MOE].[dbo].Signals_Approaches_Phases_800N inner join [MOE].[dbo].[PPT_7-9_12-14_800N]
on [MOE].[dbo].Signals_Approaches_Phases_800N.ProtectedPhaseNumber = [MOE].[dbo].[PPT_7-9_12-14_800N].PhaseNumber 
and [MOE].[dbo].Signals_Approaches_Phases_800N.SignalID = [MOE].[dbo].[PPT_7-9_12-14_800N].SignalId

where ApproachID in (2043,2045,7662,7664,2047,2048,2051,2052,2152,2151)
order by BinStartTime