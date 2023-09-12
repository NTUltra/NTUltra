mask_index=mskHotDrake;
if target > -1 && instance_exists(target)
	direction=point_direction(x,y,target.x,target.y);
repeat(50){//flame wall of death baby yes 
with instance_create(x,y+96,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(180)-90,3+random(6))
    move_contact_solid(direction,16);
    image_angle = direction
    team = other.team
    }
}
    repeat(10){
    with instance_create(x,y,MiniFlameCannonBall)
        {
        image_angle=random(360);
        motion_add(other.direction+(random(200)-100),2+random(2))
        team = other.team}}
    audio_stop_sound(sndDragonLoop)
    snd_play(sndExplosionXL);
    alarm[1]=30;
    //appearing=-1;
    image_index=0;
    sprite_index=spr_idle;

