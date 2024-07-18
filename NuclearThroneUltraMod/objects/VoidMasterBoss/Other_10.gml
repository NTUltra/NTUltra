/// @description I am about to fuck you up DASH
gunangle = point_direction(x,y,target.x,target.y);
wepangle = 0;
walk = tellTime;
direction = gunangle;
speed = acc;
alarm[2] = tellTime;
alarm[3] = tellTime - 10;
snd_play(sndVoidEyeCreeping,0,false,true,2,false,false,0.8,false,id,0.2);