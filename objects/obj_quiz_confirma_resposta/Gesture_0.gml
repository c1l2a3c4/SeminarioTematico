if (eh_correta)
{
	TrocarSprite()
	audio_stop_all()
	PlaySfx(snd_correto_quiz);
}
else
{
	TrocarSprite()
	audio_stop_all()
	PlaySfx(snd_errado2_quiz);	
	
	
}

gerenciador_quiz.ConfirmaRepostaExecutado()

