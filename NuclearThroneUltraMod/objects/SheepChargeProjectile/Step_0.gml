/// @description alpha
alpha = lerp(0,0.8,(alarm[0]-0.2)/maxAlarm);
image_alpha = alpha;
var is60fps = UberCont.normalGameSpeed == 60
if is60fps
	imageIndex += 0.25;
else
	imageIndex += 0.5;