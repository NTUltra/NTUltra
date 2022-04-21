/// @description Death
Sleep(100)
repeat(42)
instance_create(x+random(200)-100,y+random(300)-150,explo)

repeat(30)
instance_create(x+random(300)-150,y+random(400)-200,explo)


snd_play_2d(sndNothingDeath2);

alarm[2] = 0;
alarm[1] = 0;
sprite_index = spr_death;
image_index = 0;

scrDrop(100,100);
scrDrop(100,10);
scrDrop(20,0);