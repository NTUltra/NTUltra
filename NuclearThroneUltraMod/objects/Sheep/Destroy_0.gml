scrDrop(20,1)

//NOW SOME ENEMY CODE
with instance_create(x,y,Corpse)
{
size = other.size
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_xscale = other.right

if instance_exists(Player)
{
	speed += 2;
	if Player.ultra_got[52] == 1
		speed += 4;
	if Player.skill_got[20] = 1
	{
		speed += 9.3
		if Player.race=25
			speed+=1.25;
	}
}
else
{
	if speed > 18
		speed = 18
}
if size > 0
	speed /= size


}

snd_play(snd_dead)

Sleep(20+size*15)
if instance_exists(Player)
{
if Player.race = 4
raddrop += 1

}

//Mutations
scrEnemyDeathEvent();
