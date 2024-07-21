var wepIndex = 0;
if alarm[2] < 11 && alarm[2] > 0
	wepIndex = 1;
else if alarm[4] < 11 && alarm[4] > 0
	wepIndex = 2;
else if alarm[5] < 11 && alarm[5] > 0
	wepIndex = 3;
if gunangle <= 180
	draw_sprite_ext(sprVoidMasterSword,wepIndex,x,y,1,wepflip,gunangle+wepangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
	draw_sprite_ext(sprVoidMasterSword,wepIndex,x,y,1,wepflip,gunangle+wepangle,c_white,1)