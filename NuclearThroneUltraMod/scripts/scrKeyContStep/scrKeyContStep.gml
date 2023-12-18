function scrKeyContStep() {


	var p;
	p = 0//player id

	repeat(players)
	{
	//if gamepad[p] = -1
	//{
	//KEYBOARD CONTROLS FOR THIS DUDE
	//0 = nothing 1 = pressed 2 = hold = 3 = release //SO ON HOLD is both 1 and 2 AND NOT HELD IS BOTH 3 and 0

	//up
	if keyboard_check(UberCont.opt_up) or keyboard_check(vk_up) or gamepad_axis_value(p,gp_axislv) < 0{

	if instance_exists(Player)
	Player.movethislevel=true;

	     if key_nort[p] = 1 key_nort[p] = 2
	else if key_nort[p] !=2 key_nort[p] = 1}
	else{if key_nort[p] = 3 key_nort[p] = 0
	else if key_nort[p] !=0 key_nort[p] = 3}

	//down
	if keyboard_check(UberCont.opt_down) or keyboard_check(vk_down) or gamepad_axis_value(p,gp_axislv) > 0{

	if instance_exists(Player)
	Player.movethislevel=true;

	     if key_sout[p] = 1 key_sout[p] = 2
	else if key_sout[p] !=2 key_sout[p] = 1}
	else{if key_sout[p] = 3 key_sout[p] = 0
	else if key_sout[p] !=0 key_sout[p] = 3}

	//left
	if keyboard_check(UberCont.opt_left) or keyboard_check(vk_left) or gamepad_axis_value(p,gp_axislh) < 0{

	if instance_exists(Player)
	Player.movethislevel=true;

	     if key_west[p] = 1 key_west[p] = 2
	else if key_west[p] !=2 key_west[p] = 1}
	else{if key_west[p] = 3 key_west[p] = 0
	else if key_west[p] !=0 key_west[p] = 3}

	//right
	if keyboard_check(UberCont.opt_right) or keyboard_check(vk_right) or gamepad_axis_value(p,gp_axislh) > 0{

	if instance_exists(Player)
	Player.movethislevel=true;

	     if key_east[p] = 1 key_east[p] = 2
	else if key_east[p] !=2 key_east[p] = 1}
	else{if key_east[p] = 3 key_east[p] = 0
	else if key_east[p] !=0 key_east[p] = 3}


	//fire
	if mouse_check_button(mb_left) or keyboard_check(vk_enter) or gamepad_button_check(p,gp_shoulderrb) or gamepad_button_check(p,gp_shoulderr){
	     if key_fire[p] = 1 key_fire[p] = 2
	else if key_fire[p] !=2 key_fire[p] = 1}
	else{if key_fire[p] = 3 key_fire[p] = 0
	else if key_fire[p] !=0 key_fire[p] = 3}

	//special
	if mouse_check_button(mb_right)  or gamepad_button_check(p,gp_shoulderlb) or gamepad_button_check(p,gp_shoulderl){
	     if key_spec[p] = 1 key_spec[p] = 2
	else if key_spec[p] !=2 key_spec[p] = 1}
	else{if key_spec[p] = 3 key_spec[p] = 0
	else if key_spec[p] !=0 key_spec[p] = 3}
	//swap
	if keyboard_check(vk_space) or mouse_wheel_up() or mouse_wheel_down() or mouse_check_button(mb_middle) or keyboard_check(vk_space) or keyboard_check(UberCont.opt_swap)
	or gamepad_button_check(p,gp_face4){
	     if key_swap[p] = 1 key_swap[p] = 2
	else if key_swap[p] !=2 key_swap[p] = 1}
	else{if key_swap[p] = 3 key_swap[p] = 0
	else if key_swap[p] !=0 key_swap[p] = 3}

	//pick
	if keyboard_check(UberCont.opt_pickup) or keyboard_check(vk_shift) or keyboard_check(vk_control)
	or gamepad_button_check(p,gp_face3){//joy_pressed(joy,2)
	     if key_pick[p] = 1 key_pick[p] = 2
	else if key_pick[p] !=2 key_pick[p] = 1}
	else{if key_pick[p] = 3 key_pick[p] = 0
	else if key_pick[p] !=0 key_pick[p] = 3}


	//pause
	if keyboard_check(ord("P")) or keyboard_check(vk_f1) or gamepad_button_check_pressed(p,gp_start) or gamepad_button_check_pressed(p,gp_select){
	     if key_paus[p] = 1 key_paus[p] = 2
	else if key_paus[p] !=2 key_paus[p] = 1}
	else{if key_paus[p] = 3 key_paus[p] = 0
	else if key_paus[p] !=0 key_paus[p] = 3}
	/*}
	else
	{
	///GAMEPAD CONTROLS


	//up
	if -joy_y(gamepad[p]) > 0.4{
	     if key_nort[p] = 1 key_nort[p] = 2
	else if key_nort[p] !=2 key_nort[p] = 1}
	else{if key_nort[p] = 3 key_nort[p] = 0
	else if key_nort[p] !=0 key_nort[p] = 3}

	//down
	if joy_y(gamepad[p]) > 0.4{
	     if key_sout[p] = 1 key_sout[p] = 2
	else if key_sout[p] !=2 key_sout[p] = 1}
	else{if key_sout[p] = 3 key_sout[p] = 0
	else if key_sout[p] !=0 key_sout[p] = 3}

	//left
	if -joy_x(gamepad[p]) > 0.4{
	     if key_west[p] = 1 key_west[p] = 2
	else if key_west[p] !=2 key_west[p] = 1}
	else{if key_west[p] = 3 key_west[p] = 0
	else if key_west[p] !=0 key_west[p] = 3}

	//right
	if joy_x(gamepad[p]) > 0.4{
	     if key_east[p] = 1 key_east[p] = 2
	else if key_east[p] !=2 key_east[p] = 1}
	else{if key_east[p] = 3 key_east[p] = 0
	else if key_east[p] !=0 key_east[p] = 3}


	//fire
	if joy_button(gamepad[p],5) or -joy_z(gamepad[p]) > 0.3{
	     if key_fire[p] = 1 key_fire[p] = 2
	else if key_fire[p] !=2 key_fire[p] = 1}
	else{if key_fire[p] = 3 key_fire[p] = 0
	else if key_fire[p] !=0 key_fire[p] = 3}

	//special
	if joy_button(gamepad[p],4) or joy_z(gamepad[p]) > 0.3{
	     if key_spec[p] = 1 key_spec[p] = 2
	else if key_spec[p] !=2 key_spec[p] = 1}
	else{if key_spec[p] = 3 key_spec[p] = 0
	else if key_spec[p] !=0 key_spec[p] = 3}

	//swap
	if joy_button(gamepad[p],3){
	     if key_swap[p] = 1 key_swap[p] = 2
	else if key_swap[p] !=2 key_swap[p] = 1}
	else{if key_swap[p] = 3 key_swap[p] = 0
	else if key_swap[p] !=0 key_swap[p] = 3}

	//pick
	if joy_button(gamepad[p],2){
	     if key_pick[p] = 1 key_pick[p] = 2
	else if key_pick[p] !=2 key_pick[p] = 1}
	else{if key_pick[p] = 3 key_pick[p] = 0
	else if key_pick[p] !=0 key_pick[p] = 3}

	//back from pause
	if joy_button(gamepad[p],0){
	     if key_back[p] = 1 key_back[p] = 2
	else if key_back[p] !=2 key_back[p] = 1}
	else{if key_back[p] = 3 key_back[p] = 0
	else if key_back[p] !=0 key_back[p] = 3}

	//pause
	if joy_button(gamepad[p],7){
	     if key_paus[p] = 1 key_paus[p] = 2
	else if key_paus[p] !=2 key_paus[p] = 1}
	else{if key_paus[p] = 3 key_paus[p] = 0
	else if key_paus[p] !=0 key_paus[p] = 3}

	scrJoyAim()

	}*/

	p += 1
	}



}
