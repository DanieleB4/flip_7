/// @param {Array<Struct>} deck Array of cards
/// @param {Real} card_type The type of the card to push into the array
/// @param {Real} card_value The value of the card to push into the array
function array_push_card(deck, type, value) {
	array_push(deck, {card_type : type, card_value : value});
}

/// @param {Real} type Card type
/// @param {Real} value Card value
/// @param {Real} xx Card x position
/// @param {Real} yy Card y position
function draw_card(type, value, xx, yy) {
	var spr = spr_card_back;
	
	if(type == CARD_TYPE.NUMBER) {
		spr = spr_card_number;
	}
	else if(type == CARD_TYPE.ACTION) {
		spr = spr_card_action;
	}
	else if(type == CARD_TYPE.MODIFIER) {
		spr = spr_card_modifier;
	}
	else if(type == CARD_TYPE.BACK) {
		spr = spr_card_back;
	}
	
	draw_sprite(spr, value, xx, yy);
}
