/// @param {Array<Struct>} deck Array of cards
/// @param {Real} card_type The type of the card to push into the array
/// @param {Real} card_value The value of the card to push into the array
function array_push_card(deck, type, value) {
	array_push(deck, {card_type : type, card_value : value});
}
