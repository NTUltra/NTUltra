function scrRogueTarget() {
	target = noone

	if instance_exists(enemy)
	{
		//if target = -1
		//{
		var dir=0;
		do {

		target = instance_nearest_notme(x+random(dir)-(dir*0.5),y+random(dir)-(dir*0.5),enemy)

		dir+=10;
		}
		until(target>0&&target.team!=2&&target.object_index!=IDPDVan||dir>2000)

		if dir>2000
		{
		target=noone;
		instance_destroy();
		}

		if instance_exists(Player)
		{
		mp_potential_step(Player.x,Player.y,2,false);
		motion_add(point_direction(x,y,Player.x,Player.y),1);
		}

	}
	else
	{
		instance_destroy();
	}


}
