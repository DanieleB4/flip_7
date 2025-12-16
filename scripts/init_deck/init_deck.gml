/// @param {bool} shuffle Wether to return the deck shuffled or not
/// @return {Array<Struct>} cards
function init_deck(shuffle) {
	/// 94 total cards
	/// 79 number cards (n per number 'n' and a '0')
	/// 6 modifier cards (1 per type)
	/// 9 action cards (3 per type)
	
	var cards = [];
	
	// Add number cards
	array_push_card(cards, CARD_TYPE.NUMBER, 0);
	
	for(i = 1; i <= 12; i++) {
		repeat(i) {
			array_push_card(cards, CARD_TYPE.NUMBER, i);
		}
	}
	
	// Add modifier cards
	array_push_card(cards, CARD_TYPE.MODIFIER, CARD_MODIFIER.PLUS2);
	array_push_card(cards, CARD_TYPE.MODIFIER, CARD_MODIFIER.PLUS4);
	array_push_card(cards, CARD_TYPE.MODIFIER, CARD_MODIFIER.PLUS6);
	array_push_card(cards, CARD_TYPE.MODIFIER, CARD_MODIFIER.PLUS8);
	array_push_card(cards, CARD_TYPE.MODIFIER, CARD_MODIFIER.PLUS10);
	array_push_card(cards, CARD_TYPE.MODIFIER, CARD_MODIFIER.TIMES2);
	
	// Add action cards
	repeat(3) {
		array_push_card(cards, CARD_TYPE.ACTION, CARD_ACTION.FLIP_THREE);
	}
	repeat(3) {
		array_push_card(cards, CARD_TYPE.ACTION, CARD_ACTION.FREEZE);
	}
	repeat(3) {
		array_push_card(cards, CARD_TYPE.ACTION, CARD_ACTION.SECOND_CHANCE);
	}
	
	if(shuffle) {
		randomise();
		array_shuffle(cards);
	}
	
	return cards;
}
