/// @description Activate all enemies
BackCont.shake += 20;
with UberCont
{
	ds_list_clear(keepDeactive);	
}
instance_activate_object(enemy)
with enemy
{
	if team != 2
	{
		repeat(2)
		{
			with instance_create(x,y,Smoke)
			{
				motion_add(random(360),1 + random(2));
			}
		}	
	}
}
with TopCont
{
	darkness = 0;	
}
instance_destroy();