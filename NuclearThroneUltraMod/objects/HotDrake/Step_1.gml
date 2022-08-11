if awake==false{
x=xstart+2000;//place outside level
y=ystart+2000;
my_health = maxhealth;
}
else if  alarm[5] < 1 && alarm[4] < 1 && point_distance(x,y,xstart,ystart) > 300
{
	//Dragon is too far away do the vanish move
	sprite_index=spr_vanish
	image_index=0;
	mask_index=mskPickupThroughWall;
	direction=90;
	alarm[1]=300;
	alarm[4]=40
	//vanishing=0;
}
if instance_number(enemy) <= 2&&!instance_exists(GenCont) || instance_exists(SurvivalWave) || (instance_exists(Player) && point_distance(Player.x,Player.y,xstart,ystart) < 100){
	if awake==false{
	x=xstart
	y=ystart
	alarm[1]=80;
	meleedamage=7;
	awake=true;
	EnemyHealthAdjustments();
	//instance_create(x,y,HotDrakeLava);
	mask_index=mskHotDrake;
	instance_create(x,y,DramaCamera);
	}
}

event_inherited();
