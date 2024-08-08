/// @description GhostBoss
instance_destroy();
instance_create(x,y + 16,PitGhostBoss);
instance_create(x,y,DramaCamera);
visible = false;
alarm[3] = 5;
alarm[4] = 7;