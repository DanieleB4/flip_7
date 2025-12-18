/// @description Draw number of players
var player = "TOTAL PLAYERS";
var player_ai = "BOT PLAYERS";
draw_set_font(fnt_menu);
draw_text((room_width - string_width(player)) / 2, 256, player);
draw_text((room_width - string_width(global.player_number)) / 2, 336, global.player_number);
draw_text((room_width - string_width(player_ai)) / 2, 480, player_ai);
draw_text((room_width - string_width(global.player_number_ai)) / 2, 558, global.player_number_ai);
draw_set_font(-1);
