/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#macro MAX_PERGUNTAS_FASE2 3
instance_destroy(obj_ir_para_quiz)

global.sala_atual = 2; // Começa na sala 2

perguntas_imagem = [pergunta1_fase2, pergunta2_fase2, pergunta3_fase2]
perguntas_respostas = [resposta_Q1,resposta_Q2,resposta_Q3]
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
	botao_proximo.y = y + 130;
	
	for (i = 0; i < 4; i++)	{
		
		insts[i].x = x + 60;
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
		obj_quiz_manager_fase2.visible = false
		exibir_game_over()
		with(obj_quiz_confirma_resposta){
			visible = false
		}
	}
}
ProximaPergunta = function()
{	

	//VERIFICA SE ACERTOU AS 3, INICIA O MISSAO CONCLUIDA E DEIXA INVISIVEL OS OBJETOS
	if(perguntas_indice_atual + 1 >= MAX_PERGUNTAS_FASE2){
		obj_quiz_manager_fase2.visible = false
		missao_concluida()
		with(obj_quiz_confirma_resposta){
			visible = false
		}
		with(obj_quiz_proximo){
			visible = false
		}
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
	global.sala_atual += 1
    var game_over_x = room_width / 2;
    var game_over_y = room_height / 2;
    instance_create_layer(game_over_x, game_over_y, "Instances_2", obj_game_over);

    // Toca o som de game over
    audio_play_sound(snd_gameover, 1, false);
	
	// Pausar o jogo
    global.pausado = true;
	

    // Configura o alarme para reiniciar na sala atual após 2 segundos
    alarm[0] = room_speed * 2;
}

function missao_concluida() {
	global.sala_atual += 1
    var game_sucesso_x = room_width / 2;
    var game_sucesso_y = room_height / 2;
    instance_create_layer(game_sucesso_x, game_sucesso_y, "Instances_2", obj_quiz_missao_concluida);

    // Toca o som de sucesso
    PlaySfx(snd_winner_quiz);
	
	 // Configura o alarme para mudar para a próxima sala após 2 segundos
    alarm[1] = room_speed * 0.5;

	show_debug_message("Sala Atual Fase2: " + string(global.sala_atual));

   
}



