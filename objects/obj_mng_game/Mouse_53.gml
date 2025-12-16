/// @description Draw card
if(position_meeting(mouse_x, mouse_y, obj_deck)) {
	instance_destroy(obj_card);
	
	if(array_length(deck.cards) > 0) {	
		var card = array_pop(deck.cards);
		var display_card = instance_create_layer(deck.x + irandom_range(-16, 32), deck.y + 192, layer, obj_card);
		
		with (display_card) {
			card_type = card.card_type;
			card_value = card.card_value;
			update = true;
		}
		
		array_push(discards, card);
		
		deck.deck_index--;
	}
	else {
		deck.cards = array_shuffle(discards);
		discards = [];
		deck.deck_index = array_length(deck.cards) - 1;
	}
}
