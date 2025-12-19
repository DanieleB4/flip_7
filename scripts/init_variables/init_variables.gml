function init_variables() {
	enum CARD_TYPE {
		NUMBER,
		ACTION,
		MODIFIER,
		BACK
	}
	
	enum CARD_ACTION {
		FREEZE,
		FLIP_THREE,
		SECOND_CHANCE
	}
	
	enum CARD_MODIFIER {
		PLUS2,
		PLUS4,
		PLUS6,
		PLUS8,
		PLUS10,
		TIMES2
	}
	
	global.deck = [];
	global.discards = [];
	#macro DECK_LENGTH array_length(global.deck)
	
	global.player_number = 4;
	global.player_number_ai = 0;
	global.player_list = [];
	global.player_turn = 0;
	
	#macro PLAYER_NUMBER_MAX 6
}
