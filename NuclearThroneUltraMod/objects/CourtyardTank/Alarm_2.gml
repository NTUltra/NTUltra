/// @description Fire
sprite_index = spr_idle;
snd_play(sndScorpionFireStart);
 with instance_create(x, y, EnemyBullet2Cannon) {
    motion_add(other.gunangle, projectileSpeed)
    image_angle = direction
    team = other.team
}