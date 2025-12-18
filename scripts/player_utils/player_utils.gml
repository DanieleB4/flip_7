/// @return {Id.Instance}
function player_active() {
	return global.player_list[global.player_turn];
}

/// @return {Real}
function player_turn_next() {
	var turn = global.player_turn;
	
	do {
		turn = turn < global.player_number - 1 ? turn + 1 : 0;
	} until(global.player_list[turn].isActive || global.player_list[turn] == player_active());
	
	return turn;
}

/// @return {Id.Instance}
function player_next() {
	var turn_next = player_turn_next();
	return global.player_list[turn_next];
}
