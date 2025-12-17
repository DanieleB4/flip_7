/// @description Draw card
if(DECK_LENGTH > 0) {
	var card = draw_card(global.deck, player_active().hand);
}
else {
	deck_shuffle();
}

//Change deck sprite
if(DECK_LENGTH < 5) {
	image_index = 5 - DECK_LENGTH;
}
else {
	image_index = 0;
}
