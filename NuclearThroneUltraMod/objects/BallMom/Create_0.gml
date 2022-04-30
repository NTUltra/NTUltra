raddrop = 100
maxhealth = 450
meleedamage = 10
size = 3



event_inherited()
spr_idle = sprFrogQueenIdle
spr_walk = sprFrogQueenWalk
spr_hurt = sprFrogQueenHurt
spr_dead = sprFrogQueenDead
spr_fire = sprFrogQueenFire;
spr_dying = sprFrogQueenDying;

snd_dead = sndBallMamaDead1;
snd_hurt = sndBallMamaHurt;

//behavior
alarm[1] = 40+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y)+180,1)

close = 0
active = false;
theSpeed = 0.5 + max(0,(GetPlayerLoops()-1)*0.25);
maxSpeed = 1 + max(0,(GetPlayerLoops()*0.5));
halfway = false;
almostDead = false;
sndtaunt = 0
tauntdelay = 0
isInverted = false;
scrBossFloor();
