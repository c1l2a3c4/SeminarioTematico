/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Verifica se a porta ainda não foi usada
if (!ja_usada) {
    // Abre a porta
    sprite_index = Porta_Aberta_01;

    // Define o alarme para fechar a porta após 2 segundos
    alarm[0] = 140; // 120 steps = 2 segundos

    // Marca a porta como usada
    ja_usada = true;
}