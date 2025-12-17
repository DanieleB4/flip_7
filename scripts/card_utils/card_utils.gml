/// @param {Array<Struct>} deck Array of cards
/// @param {Real} card_type The type of the card to push into the array
/// @param {Real} card_value The value of the card to push into the array
function array_push_card(deck, type, value) {
	array_push(deck, {card_type : type, card_value : value});
}

/// @desc With this function you can shuffle the discard pile into the main deck
function deck_shuffle() {
	if(DECK_LENGTH > 0) {
		global.discards = array_shuffle(global.discards);
		global.deck = array_concat(global.deck, global.discards);
	}
	else {
		global.deck = array_shuffle(global.discards);
	}
	global.discards = [];
}
