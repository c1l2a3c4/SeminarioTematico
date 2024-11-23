/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

sprite_index = imagem_questao_1
image_xscale = 0.1
image_yscale = 0.1

botao_proximo = instance_create_layer(x, y + 160, "Instances_2", obj_quiz_proximo)
botao_proximo.gerenciador_quiz = id
botao_proximo.visible = false

insts = [ instance_create_layer(x, y + 10, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x, y + 50, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x, y + 100, "Instances_2", obj_quiz_confirma_resposta),
				instance_create_layer(x, y + 200, "Instances_2", obj_quiz_confirma_resposta)]
				

for (i = 0; i < 4; i++)

{	insts[i].depth=depth-5
	insts[i].eh_correta = false;
	insts[i].gerenciador_quiz = id
}

insts[resposta_questao_1].eh_correta = true;

ConfirmaRepostaExecutado = function() 
{
	insts[0].TrocarSprite()
	insts[1].TrocarSprite()
	insts[2].TrocarSprite()
	insts[3].TrocarSprite()	
	
botao_proximo.visible = true
}

ProximaPergunta = function()
{
	sprite_index = imagem_questao_2

	for (i = 0; i < 4; i++)
	{
		insts[i].eh_correta = false;
		insts[i].gerenciador_quiz = id
		insts[i].Reiniciar()
	}

	insts[resposta_questao_2].eh_correta = true;
}