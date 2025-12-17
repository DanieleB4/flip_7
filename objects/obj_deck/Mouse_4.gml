/// @description Draw card
instance_destroy(obj_card);

if(DECK_LENGTH > 0) {
	var card = array_pop(cards);
	var display_card = instance_create_layer(x + irandom_range(-16, 32), y + 192, layer, obj_card);
	
	with (display_card) {
		card_type = card.card_type;
		card_value = card.card_value;
		update = true;
	}
	
	array_push(obj_mng_game.discards, card);
}
else {
	cards = array_shuffle(obj_mng_game.discards);
	obj_mng_game.discards = [];
}

if(DECK_LENGTH < 5) {
	image_index = 5 - DECK_LENGTH;
}
else {
	image_index = 0;
}
