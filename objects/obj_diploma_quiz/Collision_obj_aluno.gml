// Parar o jogo ao coletar o diploma
global.estado_jogo = "quiz";

// Criar o quiz no centro da sala
instance_create_layer(room_width / 2, room_height / 2, "Instances_2", obj_quiz_manager_regra);

// Destruir o diploma para evitar novas interações
instance_destroy();
