/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
window_set_size(1280,720)
brinde=0


if (!audio_is_playing(som_de_fundo)) {
    audio_play_sound(som_de_fundo, 1, true); 
}
