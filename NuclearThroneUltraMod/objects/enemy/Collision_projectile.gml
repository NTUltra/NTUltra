if(instance_exists(Player)){
if ( (Player.skill_got[5] = 1) && (Player.race=11) && (other.team=2))//HUNTER THRONEBUTT
{
	var dmgTaken = prevhealth-my_health;
	if dmgTaken > 0
    with Marker
    {
	    if instance_exists(enemy)&&instance_exists(target)
	    {
		    if other.id=target.id
		    {
				other.my_health -= dmgTaken*0.3;
		    }
	    }
        
    }
}

//HUNTERS A ULTRA
if ( (Player.race==11)&&(Player.ultra_got[41]==1)   )
{

    if other.team=2// && other.alarm[8]<1// && sprite_index!=spr_hurt
    {   
		var dmgTaken = prevhealth-my_health;
        if point_distance(x,y,Player.x,Player.y)!=0//prevent divide by 0 error this is cheap just multiply but fk it
        {
            if(point_distance(x,y,Player.x,Player.y)<100)
            {
				var damageDeal = dmgTaken * (point_distance(x,y,Player.x,Player.y)*0.011);
				my_health -= damageDeal//point_distance(x,y,Player.x,Player.y)/82;//82;
            }
            else
            {
				var damageDeal = dmgTaken * (point_distance(x,y,Player.x,Player.y)*0.003);
				my_health -= damageDeal;//point_distance(x,y,Player.x,Player.y)/29//28;
            }
            other.alarm[8]=10;//this is the delay before we can deal extra damage again to this enemy
        }
    }

}
    if Player.race==13 && Player.ultra_got[50]==0{//Sheep passive
    if other.team=Player.team{
    if Player.justAsheep
    {Player.justAsheep=false;
    instance_create(x,y-16,Notice);
    }}}
    
    
    //WEAPON MODS!
if other.team = Player.team || other.object_index=Disc || other.object_index=ToxicGas || other.object_index=ToxicThrowerGas
{
	scrModHit();
	//debug("daamge taken: ",string(prevhealth-my_health));
	scrHumphryHit();
	if Player.ultra_got[100] && team != other.team
	{
	//	gunangle=random(360)
		target = -1;
		walk = 0;

		var amount = Player.reload * 0.6;
		if Player.skill_got[5]
			var amount = Player.reload * 0.8;
		else
			var amount = Player.reload * 0.6;
		
		if alarm[1] > 0 && my_health > 0
		{
			alarm[1] += amount;
			instance_create(x,y-6,SleepFX);
		}


		//if alarm[2]>1
		//alarm[2]=0;

	}

}    
   
 
}

