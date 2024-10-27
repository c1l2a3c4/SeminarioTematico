/// @desc Draw Menu

var hal = draw_get_halign();
var val = draw_get_valign();

draw_set_font(fTitle);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _tempYExtra = Wave(-3,3,1,0);

draw_set_color(c_black);
draw_text_transformed(
	(oGame.screenWidth/2),
	titleYExtra+4 + _tempYExtra,
	title,
	oGame.xScale,
	oGame.yScale,
	0
);

draw_set_color(c_white);
draw_text_transformed(
	(oGame.screenWidth/2) ,
	titleYExtra + _tempYExtra,
	title,
	oGame.xScale,
	oGame.yScale,
	0
);

draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

for (var i = 0; i < array_length(menu); i++)
{
		var offset = 2;
		var txt = menu[i];
		var _angle = 0;
		if (menuCursor == i) 
		{
			//txt = string_insert("> ",txt,0);
			var col = c_white;
			_angle = Wave(-5, 5, 1, 0.0);
		}
		else
		{
			var col = c_gray;	
		}
		var xx = menuX;
		var yy = menuY - (menuItemheight * (i));
		
		draw_set_color(c_black);
		draw_text_transformed(xx+offset,yy,txt, oGame.xScale, oGame.yScale, _angle);
		draw_text_transformed(xx-offset,yy,txt, oGame.xScale, oGame.yScale, _angle);
		draw_text_transformed(xx,yy+offset,txt, oGame.xScale, oGame.yScale, _angle);
		draw_text_transformed(xx,yy-offset,txt, oGame.xScale, oGame.yScale, _angle);
		draw_set_color(col);
		draw_text_transformed(xx,yy,txt, oGame.xScale, oGame.yScale, _angle);
		
}

draw_set_color(c_white);

draw_set_halign(hal);
draw_set_valign(val);