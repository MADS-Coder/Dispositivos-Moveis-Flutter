import 'dart:io';

class Veiculo{
  int velocidade;
  String cor;
  double peso;
  Veiculo (this.velocidade, this.cor, this.peso);}

class Carro extends Veiculo{
  Carro(int velocidade, String nome, double peso): super(velocidade, nome, peso);}

class Aviao extends Veiculo{
  int numero_de_helices;
  Aviao(int velocidade, String nome, double peso, this.numero_de_helices): super(velocidade, nome, peso);}

void main() {
  Carro carro1 = Carro(80, 'Preto', 190);
  stderr.write('A velocidade do carro é '); print(carro1.velocidade);
  stderr.write('A cor do carro é '); print(carro1.cor);
  stderr.write('O peso do carro é '); print(carro1.peso);

  print('');

  Carro carro2 = Carro(110, 'Vemelho', 320);
  stderr.write('A velocidade do carro é '); print(carro2.velocidade);
  stderr.write('A cor do carro é '); print(carro2.cor);
  stderr.write('O peso do carro é '); print(carro2.peso);

  print('');

  Aviao aviao1 = Aviao(150, 'Branco com Laranja', 900, 2);
  stderr.write('A velocidade do avião é '); print(aviao1.velocidade);
  stderr.write('A cor do avião é '); print(aviao1.cor);
  stderr.write('O peso do avião é '); print(aviao1.peso);
  stderr.write('A quantidade de hélices do avião são '); print(aviao1.numero_de_helices);

  print('');

  Aviao aviao2 = Aviao(250, 'Azul com Branco', 780, 4);
  stderr.write('A velocidade do avião é '); print(aviao2.velocidade);
  stderr.write('A cor do avião é '); print(aviao2.cor);
  stderr.write('O peso do avião é '); print(aviao2.peso);
  stderr.write('A quantidade de hélices do avião são '); print(aviao2.numero_de_helices);

}