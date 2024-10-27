//Impedindo que tenha mais de um objeto jogo
if(instance_number(oGame)>1){
	instance_destroy();
}

//Nome do arquivo
#macro FILENAME "options.json"

CreateOptions();

//Pego o tamanho da tela e da camera
screenWidth = display_get_width();
screenHeight = display_get_height();

viewWidth = camera_get_view_width(view_camera[0]);
viewHeight = camera_get_view_height(view_camera[0]);

//Fixo o tamanho da minha layer GUI de acordo com o tamanho da camera
display_set_gui_size(viewWidth, viewHeight);


SetFullScreen(options.fullScreen);

//Calculo a escala com base no tamanho da tela
xScale = screenWidth / (room_width);
yScale = screenHeight / (room_height);

//Crio o objeto de transição e vou para a próxima tela
instance_create_layer(x,y,"Instances",oTransition);

room_goto_next();