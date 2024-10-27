/// @desc Size variables and mode setup

w = oGame.screenWidth;
h = oGame.screenHeight;
hHalf = h * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;

depth = -100;