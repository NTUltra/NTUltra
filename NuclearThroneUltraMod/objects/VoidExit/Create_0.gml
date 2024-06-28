/// @description Init
debug("CREATE VOID EXIT");
depth = 8
image_speed = 0.4;
alarm[0] = 10;
name = "LEAVE";
nav = 0;
textAngle = 0;
alarm[6] = 5;
instance_create(x,y,WallBreak);
isOpen = false;