/// @description Lerping
if alarm[1] > 0
{
	var t = alarm[1] / upTime
	dy = lerp(topY,y,t);
	scale = lerp(maxScale,minScale,t);
}
else if alarm[3] > 0
{
	var t = alarm[3] / upTime
	dy = lerp(y,topY,t);
	scale = lerp(minScale,maxScale,t);
}
