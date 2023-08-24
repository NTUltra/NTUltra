/// @description Half health
snd_play_2d(sndOasisBossHalfHP);
reachedHalfHealth = true;
event_user(2);
homeProjectileSpeed += 0.5;
actTime -= 2;
maxSpeed++;
dashDuration -= 2;
event_user(2);