/// @description Draw hand
if(id = player_active()) {
	for(var i = 0; i < array_length(hand); i++) {
		var type = hand[i].card_type;
		var value = hand[i].card_value;
		draw_sprite_card(type, value, 32 + (i mod 9) * (16 + sprite_get_width(spr_card_back)), room_height - 128);
	}
}
