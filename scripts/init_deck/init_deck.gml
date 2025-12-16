function init_deck() {
	/// 94 total cards
	/// 79 number cards (n per number 'n' and a '0')
	/// 6 modifier cards (1 per type)
	/// 9 action cards (3 per type)
	
	var cards = [];
	
	// Add number cards
	array_push(cards, {card_type : CARD_TYPE.NUMBER, card_value : 0});
	
	for(i = 1; i <= 12; i++) {
		repeat(i) {
			array_push(cards, {card_type : CARD_TYPE.NUMBER, card_value : i});
		}
	}
	
	// Add modifier cards
	array_push(cards, {card_type : CARD_TYPE.MODIFIER, card_value : CARD_MODIFIER.PLUS2});
	array_push(cards, {card_type : CARD_TYPE.MODIFIER, card_value : CARD_MODIFIER.PLUS4});
	array_push(cards, {card_type : CARD_TYPE.MODIFIER, card_value : CARD_MODIFIER.PLUS6});
	array_push(cards, {card_type : CARD_TYPE.MODIFIER, card_value : CARD_MODIFIER.PLUS8});
	array_push(cards, {card_type : CARD_TYPE.MODIFIER, card_value : CARD_MODIFIER.PLUS10});
	array_push(cards, {card_type : CARD_TYPE.MODIFIER, card_value : CARD_MODIFIER.TIMES2});
	
	// Add action cards
	repeat(3) {
		array_push(cards, {card_type : CARD_TYPE.ACTION, card_value : CARD_ACTION.FLIP_THREE});
	}
	repeat(3) {
		array_push(cards, {card_type : CARD_TYPE.ACTION, card_value : CARD_ACTION.FREEZE});
	}
	repeat(3) {
		array_push(cards, {card_type : CARD_TYPE.ACTION, card_value : CARD_ACTION.SECOND_CHANCE});
	}
	
	return cards;
}
