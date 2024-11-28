/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#macro MAX_PERGUNTAS 3
instance_destroy(obj_ir_para_quiz)

perguntas_imagem = [imagem_questao_1, imagem_questao_2, imagem_questao_3]
perguntas_respostas = [resposta_questao_1,resposta_questao_2,resposta_questao_3]
perguntas_indice_atual = -1

botao_proximo = instance_create_layer(x, y + 160, "Instances_3", obj_quiz_proximo)
botao_proximo.depth = depth - 5;
botao_proximo.visible = false

insts = [ instance_create_layer(x -30, y + -20, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x -30 , y + 20, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x -30, y + 70, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x -30, y + 110, "Instances_2", obj_quiz_confirma_resposta)]
				

for (i = 0; i < 4; i++)

{	insts[i].depth=depth-5
	insts[i].eh_correta = false;
	
}


Iniciar = function(){
	
	perguntas_indice_atual = -1;
	x = room_width / 2
	y = room_height / 2
	botao_proximo.x = x
	botao_proximo.y = y + 160;
	
	for (i = 0; i < 4; i++)	{
		
		insts[i].x = x - 30;
		insts[i].y = y - 20 + ( i * 40)
		
	
	}
	perguntas_indice_atual = -1;
	
	ProximaPergunta()
	
}

ConfirmaRespostaExecutado = function(eh_correto) 
{
	with(obj_quiz_confirma_resposta){
		TrocarSprite()
	}
	
	if(eh_correto){	
		botao_proximo.visible = true
	}else{
		obj_quiz_manager.visible = false
		exibir_game_over()
		with(obj_quiz_confirma_resposta){
			visible = false
		}
	}
}
ProximaPergunta = function()
{	

	
	if(perguntas_indice_atual + 1 >= MAX_PERGUNTAS){
		room_goto(Room_Quiz_Concluir)
		return;
	}
	perguntas_indice_atual++;
	
	sprite_index = perguntas_imagem[perguntas_indice_atual]

	for (i = 0; i < 4; i++)
	{
		insts[i].depth=depth-5
		insts[i].eh_correta = false;
		insts[i].Reiniciar()
	}

	insts[perguntas_respostas[perguntas_indice_atual]].eh_correta = true;
	botao_proximo.visible = false
}

function exibir_game_over() {
    // Criar o objeto "obj_game_over" no centro da tela
    var game_over_x = room_width / 2;
    var game_over_y = room_height / 2;
    instance_create_layer(game_over_x, game_over_y, "Instances_2", obj_game_over);

    // Toca o som de game over
    audio_play_sound(snd_gameover, 1, false);

    // Pausar o jogo
    global.pausado = true;

    // Configura o alarme para reiniciar o jogo após 2 segundos
    alarm[0] = room_speed * 2; // 2 segundos de atraso
	
}


