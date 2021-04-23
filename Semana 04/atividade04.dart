void main() {

  int x = 54;
  
  if (x < 16){    
    print('Menor de ${x} anos não votam!');
    } else if (x >= 18 && x < 70){
      print('Idade de ${x} anos, voto obrigatório!');
    } else if ((x >= 16 && x < 18) || (x > 69) || (x < 16)){
      print('Idade ${x} é considerado analfabeto, o voto é facultativo!.');
    }

   print('Fim!');
}
