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
		until((target>0&&target.team!=2&&target != noone && target.object_index!=IDPDVan && target.object_index!=IDPDVanVertical)||dir>2000)

		if dir>2000
		{
		target=noone;
		instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}


}
