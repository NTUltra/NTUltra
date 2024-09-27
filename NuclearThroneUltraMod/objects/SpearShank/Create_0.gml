/// @description Init

// Inherit the parent event
event_inherited();
dmg = 22;
walled = 0;
minRange = 6;
maxRange = 30;
myStart = noone;
myEnd = noone;
myOwner = noone;
startSpr = sprSpearSlashStart;
startMsk = mskSpearSlashStart;
endSpr = sprSpearSlashEnd;
endMsk = mskSpearSlashEnd;
snd_wallhit = choose(sndMeleeSpearHit1,sndMeleeSpearHit2);
alarm[10] = 0;