///scrDrawLeaderboardCrown();
// /@description
///@param
function scrDrawLeaderboardCrown(crowns, xx, yy){
	var al = array_length(crowns);
	var finalArray = [];
	var j = 0;
	for (var i = 0; i < al; i++) {
		if crowns[i] != 1
		{
			finalArray[j] = crowns[i];
			j++;
		}
	}
	if array_length(finalArray) > 0
	draw_sprite(scrLeaderboardCrown(finalArray[max(0,
					floor(
						lerp(0, array_length(finalArray)-1, killScroll)
					)
				)
			]
		),
		0,
		xx,
		yy+2
	);
	var w = 30*0.5;
	var h = 22*0.5;
	if (mouse_x > xx - w && mouse_x < xx + w && mouse_y > yy - h && mouse_y < yy + h)
	{
		enablePopUp = 2;
		popupEntry = finalArray;
		popUpX = xx;
		popUpY = yy;
	}
}