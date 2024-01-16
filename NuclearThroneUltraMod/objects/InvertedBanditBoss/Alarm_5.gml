
spr_idle = sprInvertedBanditBossIdle
spr_walk = sprInvertedBanditBossWalk
spr_hurt = sprInvertedBanditBossHurt
spr_dead = sprInvertedBanditBossDead
spr_fire = sprInvertedBanditBossFire
charge = 0

alarm[1] = 10;

if intro = 0
{
if !instance_exists(InvertedBanditBoss)
instance_create(x,y,DramaCamera)

with BanditBoss
intro=1;

intro = 1
}

