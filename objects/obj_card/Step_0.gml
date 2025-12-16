/// @description Update card
if(update) {
	if(card_type == CARD_TYPE.NUMBER) {
		sprite_index = spr_card_number;
	}
	else if(card_type == CARD_TYPE.ACTION) {
		sprite_index = spr_card_action;
	}
	else if(card_type == CARD_TYPE.MODIFIER) {
		sprite_index = spr_card_modifier;
	}
	else if(card_type == CARD_TYPE.BACK) {
		sprite_index = spr_card_back;
	}
	
	image_index = card_value;
	
	update = false;
}
