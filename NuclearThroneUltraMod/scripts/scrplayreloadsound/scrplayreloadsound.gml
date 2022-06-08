///scrPlayReloadSound();
// /@description
///@param
function scrPlayReloadSound(wep){
	if wep_type[wep] = 0 //&& ultra_got[27]=0//mirror hands melee bug fix part 2
		snd_play(sndMeleeFlip,0,true)
	if wep_type[wep] = 3
		snd_play(sndCrossReload,0,true)
	if wep_type[wep] = 4
		snd_play(sndNadeReload,0,true,false,2,false,false,0.6)
	if wep_type[wep] = 2
		snd_play(sndShotReload,0,true)
}