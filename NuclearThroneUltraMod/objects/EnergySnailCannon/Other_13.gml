/// @description Hit a wall
if bounce <= 0
{
	alarm[2] = 5;
}
instance_create(x,y,WallBreakWallOnlyBigCircle);
ballX = x;
ballY = y;
alarm[3] = 4;
bounce -= 1;