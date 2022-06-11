function scrTarget() {
	if !instance_exists(target) || target < 0
		target = -1

	if instance_exists(Player)
	{
		if target == -1 && Player.justAsheep=false || (Player.ultra_got[11]=1&&random(5000)<1)
		{
			if instance_exists(Decoy)//Chickens vanish
			{
				target = Decoy;
			} else if Player.ultra_got[11]=1{//eyes ultra c brainwash
			    if instance_exists(enemy) && instance_number(enemy) > 2
			    {
			        if random(100)<28+(Player.skill_got[5]*10)//chance to get brainwashed
			        {//thronebutt adds 10%
				        target=instance_nearest_notme(x,y,enemy);
				        team = 5+irandom(10);
			        }
			        else{
						target = instance_nearest(x,y,Player)
						team=1;//what if popo?
			        }
			    }
			}
			else{
				target = instance_nearest(x,y,Player);
				//Popo and enemies target each other?
				if point_distance(x,y,target.x,target.y) < 300 && collision_line(x,y,target.x,target.y,Wall,false,false) < 0
				{
					if instance_exists(enemy) && instance_number(enemy) > 1
					{
						var nearest = 	instance_nearest_notme(x,y,enemy)
						if nearest.team != team && nearest.team != 0
							target = nearest;
					}
				}
			}
		}
		else if Player.race==12{
			if instance_exists(YungCuzDupe){//Yung cuz's dupes
			    with enemy
			    {
				    if point_distance(x,y,Player.x,Player.y)<point_distance(x,y,instance_nearest(x,y,YungCuzDupe).x,instance_nearest(x,y,YungCuzDupe).y)
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
	}
	else
		target = -1;



}
