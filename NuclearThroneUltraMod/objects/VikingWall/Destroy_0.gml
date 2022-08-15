//repeat(2)

with instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
motion_add(random(360),random(1));


if instance_exists(Player){
if Player.skill_got[5]{
instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)}

if Player.ultra_got[94]{//cold heart
instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)}
}

snd_play(sndWallBreak,0.1)

instance_create(x,y,Smoke);

with myWall
instance_destroy();

