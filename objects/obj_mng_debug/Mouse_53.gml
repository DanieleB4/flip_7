/// @description Discard hand
if(position_meeting(mouse_x, mouse_y, obj_btn_stay)) {
	global.discards = array_concat(global.discards, player_active().hand);
	player_active().hand = [];
}
