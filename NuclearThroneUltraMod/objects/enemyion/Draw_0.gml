draw_sprite_ext(sprEnemyLaser,-1,x,y,1000,1,270,c_white,1)
draw_sprite_ext(sprEnemyIonEnd,-1,x,y,1,1,270,c_white,1)
draw_sprite(sprEnemyPlasmaImpactIndicator,0,x,y);
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprEnemyLaser,-1,x,y,1000,1,270,c_white,1)
draw_set_blend_mode(bm_normal)

