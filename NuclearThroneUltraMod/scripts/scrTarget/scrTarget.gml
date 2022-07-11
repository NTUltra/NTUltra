function scrTarget() {
	if target < 0 || !instance_exists(target) || target == noone
		target = -1

	if instance_exists(Player)
	{
		if target == -1 && Player.justAsheep=false || (Player.ultra_got[11]=1 && random(5000)<1)//TODO let enemies fight when you are just a sheep
		{
			if instance_exists(Decoy)//Chickens vanish
			{
				target = Decoy;
			} else if Player.ultra_got[11]=1{//eyes ultra c brainwash
			    if instance_exists(enemy) && instance_number(enemy) > 2
			    {
			        if random(100)<28+(Player.skill_got[5]*10)//chance to get brainwashed
			        {//thronebutt adds 10%
				        var nearest = instance_nearest_notme(x,y,enemy);
						if instance_exists(nearest) && nearest != noone && nearest.team != team && nearest.team != 0
						{
							target = nearest;
				        team = 5 + irandom(10);
						}
			        }
			        else{
						target = instance_nearest(x,y,Player)
						team=1;//what if popo?
			        }
			    }
			}
			else {
				target = instance_nearest(x,y,Player);
				//Popo and enemies target each other?
				if point_distance(x,y,target.x,target.y) < 300 && instance_exists(Wall) && collision_line(x,y,target.x,target.y,Wall,false,false) < 0
				{
					if instance_exists(enemy) && instance_number(enemy) > 2
					{
						var nearest = 	instance_nearest_notme(x,y,enemy)
						if instance_exists(nearest) && nearest != noone && nearest.team != team && nearest.team != 0
							target = nearest;
					}
				}
				
			}
		}
		if Player.race == 12 && target == Player.id {
			if instance_exists(YungCuzDupe){//Yung cuz's dupes
			    with enemy
			    {
				    if point_distance(x,y,Player.x,Player.y) < point_distance(x,y,instance_nearest(x,y,YungCuzDupe).x,instance_nearest(x,y,YungCuzDupe).y)
				    {
						target = instance_nearest(x,y,Player)
					}
				    else
					{
						target = instance_nearest(x,y,YungCuzDupe)
					}
			    }
		    } 
		}
		else if Player.race == 10 && target == Player.id {
			if instance_exists(Ally){//Yung cuz's dupes
			    with enemy
			    {
				    if point_distance(x,y,Player.x,Player.y) < point_distance(x,y,instance_nearest(x,y,Ally).x,instance_nearest(x,y,Ally).y)
				    {
						target = instance_nearest(x,y,Player)
					}
				    else
					{
						target = instance_nearest(x,y,Ally)
					}
			    }
		    } 
		}
		else if Player.ultra_got[3] && target == Player.id {
			if instance_exists(Partner){//Yung cuz's dupes
			    with enemy
			    {
				    if point_distance(x,y,Player.x,Player.y) < point_distance(x,y,instance_nearest(x,y,Partner).x,instance_nearest(x,y,Partner).y)
				    {
						target = instance_nearest(x,y,Player)
					}
				    else
					{
						target = instance_nearest(x,y,Partner)
					}
			    }
		    } 
		}
		if target == Player.id && Player.justAsheep
		{
			target = -1;
		}
	}
	else
		target = -1;
		
	//if target < 0 || !instance_exists(target) || target == noone
	//	target = -1
}
