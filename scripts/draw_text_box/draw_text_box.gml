///@param {Real} xx The x coordinate where the box points to
///@param {Real} yy The y coordinate where the box points to
///@param {String} text The text to show in the box
///@param {Real} padding The text to show in the box
///@param {Constant.Color} color The text box background color
function draw_text_box(xx, yy, text, padding = 16, b_color = c_gray) {
	//Draw triangle
	var t_height = 16;
	var t_side = (2 * t_height) / sqrt(3);
	draw_triangle_colour(xx - (t_side / 2), yy - t_height, xx + (t_side / 2), yy - t_height, xx, yy, b_color, b_color, b_color, false);
	draw_triangle_colour(xx - (t_side / 2), yy - t_height, xx + (t_side / 2), yy - t_height, xx, yy, c_black, c_black, c_black, true);
	
	//Draw rectangle
	draw_roundrect_colour(xx - padding - string_width(text) / 2, yy - 2 * padding - t_height - string_height(text), xx + padding + string_width(text) / 2, yy - t_height, b_color, b_color, false);
	draw_roundrect_colour(xx - padding - string_width(text) / 2, yy - 2 * padding - t_height - string_height(text), xx + padding + string_width(text) / 2, yy - t_height, c_black, c_black, true);
	
	//Draw text
	draw_set_font(fnt_menu);
	draw_text(xx - string_width(text) / 2, yy - padding - t_height - string_height(text), text);
	draw_set_font(-1);
	
	//Connect triangle and rectangle
	draw_line_colour(xx - (t_side / 2) + 1, yy - t_height, xx + (t_side / 2) - 1, yy - t_height, b_color, b_color);
}
