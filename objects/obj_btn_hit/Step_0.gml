/// @description Disappear if player draw a card
if(player_active().hasDrew && global.player_turn != player_turn_next()) {
	visible = false;
}
else {
	visible = true;
}
