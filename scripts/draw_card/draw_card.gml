/// @param {Array<Struct>} source The source array where to draw the card from
/// @param {Array<Struct>} target The target array where to move the card to
/// @return {Struct}
function draw_card(source, target) {
	if(array_length(source) > 0) {
		var card = array_pop(source);
		array_push(target, card);
		return card;
	}
	return {};
}
