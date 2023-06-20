if my_health <= 0
{
with instance_create(x,y,Corpse)
{
mySize = other.mySize
mask_index = other.mask_index
sprite_index = other.spr_dead
}
scrRaddrop();
}

repeat(4)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}
instance_create(x,y,ExploderExplo)
if !instance_exists(GenCont)
snd_play(sndEXPChest,0,true)
Sleep(1)


scrChestOasis();

