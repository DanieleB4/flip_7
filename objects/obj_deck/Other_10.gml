/// @description Draw card
if(DECK_LENGTH > 0) {
	draw_card(global.deck, player_active().hand);
	player_active().hasDrew = true;
}
else {
	deck_shuffle();
}
