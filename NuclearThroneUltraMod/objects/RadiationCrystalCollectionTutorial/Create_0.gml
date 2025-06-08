/// @description Init almost creditlike
event_inherited();

var leftText =  "TWO";
var crystalsLeft = 2;
if UberCont.mutation_crystals_collected_1
	crystalsLeft -= 1;
if UberCont.mutation_crystals_collected_2
	crystalsLeft -= 1;
if UberCont.mutation_crystals_collected_3
	crystalsLeft -= 1;
if crystalsLeft == 2
	leftText =  "THERE ARE <w>TWO<w> <g>RADIATION CRYSTALS<g> LEFT";
if crystalsLeft == 1
	leftText =  "THERE IS <w>ONE<w> <g>RADIATION CRYSTAL<g> LEFT";
if crystalsLeft < 1
	leftText = "YOU HAVE FOUND <w>ALL<w> <g>RADIATION CRYSTALS<g><w>!<w>"
tutorial = [
	["",20],
	["YOU HAVE FOUND A <g>RADIATION CRYSTAL<g><w>!<w>##THIS <w>PERMANENTLY<w> INCREASES#YOUR <g>MUTATION<g> <w>CHOICES<w> BY <w>ONE<w>",170],
	[leftText,90],
	["",15],
]
alarm[1] = alarm[0];
with Player
{
	alarm[3] = max(alarm[3],other.alarm[1]) + 10;	
}