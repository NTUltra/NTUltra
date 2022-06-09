/// @description previous HP
prevhealth=my_health;

///eyes brainwash
if ultra_got[11]=1{//Eyes Ultra C brainwashed enemies targeting closes enemies
    with enemy
    {
    if team==4{
    target=instance_nearest_notme(x,y,enemy);
    //do {target=instance_nearest_notme(x,y,enemy);}
    //until (target.brainwashed==false)
    }
    }
}