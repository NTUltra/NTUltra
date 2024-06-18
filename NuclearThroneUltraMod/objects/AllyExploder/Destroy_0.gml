event_inherited()
if object_index == AllyExploder
{
	var dir = random(360)
	    repeat(8)
	    {
	    dir += 45
	    with instance_create(x,y,EnemyBullet2)
	    {
	    motion_add(dir,4)
	    image_angle = direction
	    team = other.team
	    }
	    with instance_create(x,y,AcidStreak)
	    {
	    motion_add(dir,8)
	    image_angle = direction
	    }
	    }

	    repeat(4)
	instance_create(x,y,ToxicThrowerGas)
}
snd_play(sndToxicBoltGas);




BackCont.shake += 10

repeat(3)
{
with instance_create(x,y,ExploderExplo)
motion_add(random(360),random(2)+2)
}

snd_play(sndFrogExplode)

