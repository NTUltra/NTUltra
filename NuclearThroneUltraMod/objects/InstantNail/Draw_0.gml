/// @description Draw
if !passedPoint
{
	draw_sprite_ext(sprInstantNailCorner,image_index,xstart,ystart,1,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprInstantNailCorner,image_index,x,y,1,image_yscale,image_angle,c_white,1);
	draw_sprite_ext(sprite_index,image_index,x,y,point_distance(xstart,ystart,x,y),image_yscale,image_angle,c_white,1);
}
var td = point_direction(splitX,splitY,targetX,targetY);
if goTime
{
	var lx = lengthdir_x(theSpeed,direction);
	var ly = lengthdir_y(theSpeed,direction);
	if (xstart <= x && xstart + lx >= x) || (ystart <= y && ystart + ly >= y) || (xstart >= x && xstart + lx <= x) || (ystart >= y && ystart + ly <= y)
	{
		//PASSED POINT
		passedPoint = true;
		xstart = x;
		ystart = y;
	}
	else
	{
		xstart += lx;
		ystart += ly;
	}
	if passedPoint
	{
		var lx = lengthdir_x(theSpeed,td);
		var ly = lengthdir_y(theSpeed,td);
		if (splitX <= targetX && splitX + lx >= targetX) || (splitY <= targetY && splitY + ly >= targetY) || (splitX >= targetX && splitX + lx <= targetX) || (splitY >= targetY && splitY + ly <= targetY)
		{
			//PASSED POINT
			passedSplit = true;
			with original {
				lineIndex += 1;
				if lineIndex < array_length(myLine)
					with myLine[lineIndex]
					{
						goTime = true;
					}
				else
				{
					canEnd = true;
					if alarm[2] < 1
						instance_destroy();
				}
			}
			if id != original
				instance_destroy();
			splitX = targetX;
			splitY = targetY;
		}
		else
		{
			splitX += lx;
			splitY += ly;
		}
	}
}
if !passedSplit
{
	draw_sprite_ext(sprite_index,image_index,targetX,targetY,point_distance(splitX,splitY,targetX,targetY),image_yscale,td,c_white,1);
}
