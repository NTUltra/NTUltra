/// @description close
spr_idle=spr_become_close;
spr_walk=spr_become_close;
spr_hurt = spr_hurt_closed
image_index=0;
alarm[8] = sprite_get_number(spr_idle)/image_speed;
//my_health=100000;
alarm[4]=90;//become exposed again

