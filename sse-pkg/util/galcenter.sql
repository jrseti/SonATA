select ActivityUnits.targetId, format(sum(dxHighFreqMhz - dxLowFreqMhz),1) as TotalMHz, format(min(dxLowFreqMhz),1) as MinFreqMHz, format(max(dxHighFreqMhz),1) as MaxFreqMHz  from ActivityUnits, TargetCat, Activities  where ActivityUnits.targetId = TargetCat.targetId and ActivityUnits.activityId = Activities.id and ActivityUnits.validObservation = 'Yes' and Activities.type = 'target' and dxLowFreqMhz > 6766.9 group by ActivityUnits.targetId;
