/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

gerenciador_quiz = noone

TrocarSprite = function()
{
	if (eh_correta)
		sprite_index = imagem_correto
	else
		sprite_index = imagem_errado
}

Reiniciar = function()
{
	sprite_index = imagem_escolha
}