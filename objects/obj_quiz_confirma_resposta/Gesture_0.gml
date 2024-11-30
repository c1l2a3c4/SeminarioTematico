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

if (global.sala_atual == 1){
	obj_quiz_manager.ConfirmaRespostaExecutado(eh_correta)
} else if (global.sala_atual == 2) {
	obj_quiz_manager_fase2.ConfirmaRespostaExecutado(eh_correta)
} else if (global.sala_atual == 3){
	obj_quiz_manager_fase3.ConfirmaRespostaExecutado(eh_correta)
}

