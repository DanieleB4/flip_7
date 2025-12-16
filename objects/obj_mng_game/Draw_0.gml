/// @description Insert description here
// You can write your code in this editor
draw_text(32, 32, string("Deck index: {0}", deck.deck_index + 1));
draw_text(32, 48, string("Discard length: {0}", array_length(discards)));

for(var i = 0; i < array_length(discards) - 1; i++) {
	var type = discards[i].card_type;
	var value = discards[i].card_value;
	draw_card(type, value, 32 + (i mod 9) * (16 + 1/3 * sprite_get_width(spr_card_back)), room_height - 64);
}
