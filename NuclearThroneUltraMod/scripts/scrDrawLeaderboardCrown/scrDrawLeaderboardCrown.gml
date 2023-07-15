///scrDrawLeaderboardCrown();
// /@description
///@param
function scrDrawLeaderboardCrown(crowns, xx, yy){
	draw_sprite(scrLeaderboardCrown(crowns[max(0,
					floor(
						lerp(0, array_length(crowns)-1, killScroll)
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
		popupEntry = crowns;
		popUpX = xx;
		popUpY = yy;
	}
}