/// @description previous HP
prevhealth=my_health;

///eyes brainwash
if ultra_got[11]=1{//Eyes Ultra C brainwashed enemies targeting closes enemies
    with enemy
    {
	    if team >= 5 {
			target = instance_nearest_notme(x,y,enemy);
		}
    }
}