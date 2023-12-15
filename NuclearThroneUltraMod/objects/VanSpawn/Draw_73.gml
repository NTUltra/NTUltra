/// @description Indicator
if RogueIDPD
	exit;
var vy = camera_get_view_y(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
var vx = camera_get_view_x(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
if (vertical)
{
	draw_sprite_ext(arrowSprite,-1,x,y,right,1,90,c_white,1);
	var yy = y;
	var yScale = 1;
	var yyy = vy;
	var squareAngle = 90;
	if y < vy
	{
		yy = vy;
		yScale = -1;
		draw_sprite_ext(sprVanIndicator,0,x,yy,1,yScale,90,c_white,1);
	}
	else if y > vy+vh
	{
		yy = vy+vh;
		draw_sprite_ext(sprVanIndicator,0,x,yy,1,yScale,270,c_white,1);
	}
	if instance_exists(Player) {
			
	}
	yScale = -1;
	var vxx = x;//vx + (vw*0.5);
	if squareRight < 0 {
		//Down
		squareAngle = 270;
		yScale = 1;
		yyy = vy+vh;
	}
	if squareRight != 0
		for (var i = 1; i <= amountOfBullets*0.5; i++)
		{
			draw_sprite_ext(sprVanSquareIndicator,0,vxx - bulletStep * i,yyy,1,yScale,squareAngle,c_white,1);
			draw_sprite_ext(sprVanSquareIndicator,0,vxx + bulletStep * i,yyy,1,yScale,squareAngle,c_white,1);
		}
}
else
{
	draw_sprite_ext(arrowSprite,-1,x,y,right,1,0,c_white,1);	
	var xx = x;
	var xScale = 1;
	if x < vx
	{
		xx = vx;
		xScale = -1;
		draw_sprite_ext(sprVanIndicator,0,xx,y,xScale,1,0,c_white,1);
	}
	else if x > vx+vw
	{
		xx = vx+vw;
		draw_sprite_ext(sprVanIndicator,0,xx,y,xScale,1,0,c_white,1);
	}
	xScale = 1;
	var xxx = vx+vw;
	var vyy = y;//vy + (vh*0.5);
	if squareRight > 0 {
		//Right
		xScale = -1;
		xxx = vx;
	}
	if squareRight != 0
		for (var i = 1; i <= amountOfBullets*0.5; i++)
		{
			draw_sprite_ext(sprVanSquareIndicator,0,xxx,vyy - bulletStep * i,xScale,1,0,c_white,1);
			draw_sprite_ext(sprVanSquareIndicator,0,xxx,vyy + bulletStep * i,xScale,1,0,c_white,1);
		}
}