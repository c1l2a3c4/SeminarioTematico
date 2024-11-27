// Parar o jogo ao coletar o diploma
global.estado_jogo = "quiz";

// Criar o quiz no centro da sala
//instance_create_layer(room_width / 2, room_height / 2, "Instances_3", obj_quiz_manager_regra);
obj_quiz_manager.Iniciar()
// Destruir o diploma para evitar novas interações
instance_destroy();
