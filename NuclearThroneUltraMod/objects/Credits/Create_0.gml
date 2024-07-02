/// @description Init
text = "";
dullText = "";
audio_stop_all();
alarm[0] = 30;
inputDelay = 5;
alarm[2] = inputDelay;
canSkip = true;
with MusCont
{
	audio_stop_sound(song);
	song = musCredits;
	snd_loop(song);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	
	amb = amb0c;
	if !audio_is_playing(amb)
		snd_loop(amb)
	audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
}
type = 0;
creditIndex = 0;
credits = [
["A <w>GAME<w> CREATED BY <y>VLAMBEER<y>",150],
["A <g>MOD<g> CREATED BY <y>ERDEPPOL<y>",150],
["<w>PROJECT LEAD, DESIGN & DEVELOPMENT<w>#JAN WILLEM NIJMAN",150],
["<w>PRODUCTION & ADDITIONAL DEVELOPMENT<w>#RAMI ISMAIL",150],
["<w>ART DIRECTION, LEAD ARTIST & ANIMATION<w>#PAUL VEER",150],
["<w>ORIGINAL SOUNDTRACK<w>#JUKIO KALLIO",150],
["<w>SOUND DESIGN<w>#JOONAS TURNER",150],
["<w>ADDITIONAL ARTWORK<w>#JUSTIN CHAN",150],
[
"<w>ADDITIONAL MUSIC CREDITS<w>#"+
"#"+
"<w>OASIS<w>#"+
"JUKIO KALLIO#"+
"DANNY BARANOWSKI#"+
"#"+
"<w>PIZZA SEWERS<w>#"+
"JUKIO KALLIO#"+
"EIRIK SUHRKE#"+
"#"+
"<w>VENUS<w>#"+
"JUKIO KALLIO#"+
"ADAM 'DOSEONE' DRUCKER#"+
"#"+
"<w>CURSED CAVES<w>#"+
"JUKIO KALLIO#"+
"RICHARD 'DISASTERPEACE' VREELAND#"+
"#"+
"<w>JUNGLE<w>#"+
"JUKIO KALLIO#"+
"DANIEL HAGSTROM#"+
"#"+
"<w>MANSION & HYPER CRYSTAL<w>#"+
"JUKIO KALLIO#"+
"JOONAS TURNER#"
,390],
[
"<w>TEA BREAK<w>#"+
"ORIGINAL COMPOSITION BY EIRIK SUHRKE#"+
"#"+
"<w>ADDITIONAL MUSIC CONSULTATION<w>#"+
"JOONAS TURNER",200],
[
"<w>THE VOICE OF FISH, CRYSTAL, EYES#"+
"MELTING, PLANT, STEROIDS,#"+
"ROBOT, CHICKEN, HORROR,#"+
"YUNG CUZ, ENEMIES & BOSSES<w>#"+
"JOONAS TURNER#"+
"#"+
"<w>REBEL & ADDITIONAL IDPD<w>#"+
"ISA AND#"+
"#"+
"<w>Y.V> & VENUS ENEMIES<w>#"+
"ADAM DRUCKER#"+
"#"+
"<w>FROG<w>#"+
"JUKIO KALLIO#"+
"#"+
"<w>CAPTAIN<w>#"+
"MYY LOHI#"+
"#"+
"<w>ROGUE<w>#"+
"DANIELLE MCRAE#"+
"#"+
"<w>ADDITIONAL IDPD<w>#"+
"NIILLO TAKALAINEN#"+
"POLYGON ONI????"
,300],
[
"<w>LANGUAGE DESIGN<w>#"+
"JOONAS TURNER#"+
"#"+
"<w>BACKEND PROGRAMMING#"+
"COMMUNITY MANAGEMENT#"+
"RELEASE MANAGEMENT<w>#"+
"RAMI ISMAIL"
,200],
[//SKIP THIS ONE???
"<w>TRAILERS<w>#"+
"BRAM RUITER#"+
"DANIEL CARNEIRO#"+
"KERT GARTNER#"+
"MARLON WIEBE#"+
"#"+
"<w>EVENT LOGISTICS<w>#"+
"ADRIEL WALLICK#"+
"FRED WOOD#"+
"JON KAY#"+
"MAYA KRAMER#"+
"RAMI ISMAIL",160],
[//SKIP THIS ONE???
"<w>MARKETING<w>#"+
"RAMI ISMAIL#"+
"#"+
"<w>ADDITIONAL MARKETING<w>#"+
"JAN WILLEM NIJMAN#"+
"JOONAS TURNER#"+
"JUKIO KALLIO#"+
"JUSTIN CHAN#"+
"PAUL VEER#",160],
["xxxx",120],
["xxxx",120],
[//SKIP THIS ONE???
"<w>NUCLEAR THRONE WAS CREATED USING#"+
"YOYOGAMES GAMEMAKER: STUDIO#"+
"#"+
"NUCLEAR THRONE EXTENDS ITS THANKS TO#"+
"COOL BIG MONY BIZNIZ INC.#"+
"FOR PROVIDING THE IMAGE OF YUNG VENUZ.<w>",160],
["THANK YOU FOR PLAYING!",90],
["SHOWLOGO",0],
["",90],
];
wepA = 0;
wepB = 0;
wepC = 0;
sit = sprMutant1Sit;
wave = 0;