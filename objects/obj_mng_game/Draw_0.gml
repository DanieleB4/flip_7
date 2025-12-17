for(var i = 0; i < array_length(global.discards) - 1; i++) {
	var type = global.discards[i].card_type;
	var value = global.discards[i].card_value;
	draw_sprite_card(type, value, 32 + (i mod 20) * (16 + 1/3 * sprite_get_width(spr_card_back)), room_height - 64);
}
