/// @description Iniciar o jogo ao clicar no botão "Next"
if (instance_exists(obj_popup)) {
    instance_destroy(obj_popup); // Destruir o pop-up
}
instance_destroy(); // Destruir o botão "Next"

// Iniciar o jogo: definir a variável global ou realizar as ações necessárias
global.jogo_iniciado = true;
