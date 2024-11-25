/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
instance_destroy(obj_ir_para_quiz)
sprite_index = imagem_questao_1
image_xscale = 1
image_yscale = 1

botao_proximo = instance_create_layer(x, y + 160, "Instances_3", obj_quiz_proximo)
botao_proximo.gerenciador_quiz = id
botao_proximo.visible = false


insts = [ instance_create_layer(x -30, y + -20, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x -30 , y + 20, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x -30, y + 70, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x -30, y + 110, "Instances_2", obj_quiz_confirma_resposta)]
				

for (i = 0; i < 4; i++)

{	insts[i].depth=depth-5
	insts[i].eh_correta = false;
	insts[i].gerenciador_quiz = id
}

insts[resposta_questao_1].eh_correta = true;

ConfirmaRespostaExecutado = function() 
{
	insts[0].TrocarSprite()
	insts[1].TrocarSprite()
	insts[2].TrocarSprite()
	insts[3].TrocarSprite()	
	botao_proximo.visible = true
}

ProximaPergunta = function()
{	
	
	instance_destroy(resposta_questao_1)
	
	sprite_index = imagem_questao_2

	for (i = 0; i < 4; i++)
	{
		insts[i].depth=depth-5
		insts[i].eh_correta = false;
		insts[i].gerenciador_quiz = id
		insts[i].Reiniciar()
	}

	insts[resposta_questao_2].eh_correta = true;
}


//ESSE AQUI GERENCIA A VALIDAÇÃO DA QUESTÃO 2
ProximaPergunta2 = function()
{	
	
	instance_destroy(resposta_questao_2)
	
	sprite_index = imagem_questao_3

	for (i = 0; i < 4; i++)
	{
		insts[i].depth=depth-5
		insts[i].eh_correta = false;
		insts[i].gerenciador_quiz = id
		insts[i].Reiniciar()
	}

	insts[resposta_questao_3].eh_correta = true;
}