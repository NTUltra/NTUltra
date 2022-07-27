event_inherited()


repeat(10)
{with instance_create(x,y,Dust)
motion_add(random(360),3)
}
if object_index == WaterMine
	instance_create(x,y,WaterMineExplo);
else
	instance_create(x,y,InvertedWaterMineExplo);