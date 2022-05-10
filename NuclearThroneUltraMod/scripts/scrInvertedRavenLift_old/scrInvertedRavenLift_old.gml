function scrInvertedRavenLift_old() {
	if nofly <= 0
	{repeat(6)
	{
	with instance_create(x+random(16)-8,y+random(16),Dust)
	motion_add(random(360),3+random(1))
	}
	if x >__view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	snd_play(sndRavenLift)
	z = 0
	scrTarget()
	if target > 0
	{

	do {
	targetx = x+lengthdir_x(128,point_direction(UberCont.mouse__x,UberCont.mouse__y,target.x,target.y)+random(50)-25)
	targety = y+lengthdir_y(128,point_direction(UberCont.mouse__x,UberCont.mouse__y,target.x,target.y)+random(50)-25)

	var dir;
	dir = instance_nearest(targetx,targety,Floor)
	targetx = dir.x+16+random(96)-48
	targety = dir.y+16+random(96)-48
	dir = instance_nearest(targetx,targety,Floor)
	targetx = dir.x+16
	targety = dir.y+16}
	until place_free(targetx,targety)
	}
	if point_distance(x,y,targetx,targety) > 16
	{
	image_index = 0
	nofly = 50
	instance_change(InvertedRavenFly,false)//false?
	//my_health=other.my_health;
	}
	}



}
