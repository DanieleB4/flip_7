/// @description Draw card
if(position_meeting(mouse_x, mouse_y, obj_btn_hit)) {
	with(obj_btn_hit) {
		event_perform(ev_other, ev_user0);
	}
}
