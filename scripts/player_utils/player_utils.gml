/// @return {Id.Instance}
function player_active() {
	return global.player_list[global.player_turn];
}

/// @return {Id.Instance}
function player_next() {
	var next_player_turn = global.player_turn < global.player_number - 1 ? global.player_turn + 1 : 0;
	return global.player_list[next_player_turn];
}
