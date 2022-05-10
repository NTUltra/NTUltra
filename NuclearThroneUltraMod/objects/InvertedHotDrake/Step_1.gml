if awake=false{
x=xstart+2000;//place outside level
y=ystart+2000;
maxhealth = 1000//1250//Big Dog =300
my_health=maxhealth;

EnemyHealthAdjustments();
}
if instance_number(enemy) <= 2&&!instance_exists(GenCont) || instance_exists(SurvivalWave){
	if awake=false{
		x=xstart
		y=ystart
		alarm[1]=80;
		meleedamage=7;
		awake=true;
		//instance_create(x,y,HotDrakeLava);
		mask_index=mskHotDrake;
		instance_create(x,y,DramaCamera);
	}
}

event_inherited();
