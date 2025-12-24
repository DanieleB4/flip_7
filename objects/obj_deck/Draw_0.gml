/// @description Draw text box
draw_self();

if(position_meeting(mouse_x, mouse_y, obj_deck)) {
	draw_text_box(x + sprite_width / 2, y + sprite_height / 2, "Ciao");
}
