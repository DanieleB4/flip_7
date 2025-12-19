/// @description Pass turn
if(player_active().hasDrew) {
	player_active().hasDrew = false;
}
else {
	player_active().isActive = false;
}
if(global.player_turn == player_turn_next()) {
	show_message("EVERYONE HAS PASSED/BUSTED");
}
else {
	global.player_turn = player_turn_next();
}
