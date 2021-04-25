void main(){
  ///Os nomes devem ser maria ou mario
  ///Criei duas outras variáveis globais que recebem vazio.
  var nomes = "Maria";
  var profissao = "";
  var mora = "";

  if (nomes == "Maria"){
    profissao = "Secretaria";
    mora = "Teresina";
  }else if(nomes == "Mario"){
    profissao = "Gerente";
    mora = "Timon";
  }

  String nome = "$nomes";
  switch (nome){
    case "Maria":
    print("$nome, é uma mulher, trabalha como $profissao e mora em $mora!.");
    break;
    case "Mario":
    print("$nome, é um homem, trabalha como $profissao e mora em $mora!.");
    break;
    default:
    print("Não rechonhecemos esse nome $nome, esta pessoa não trabalha em nossa empresa, e não temos informações sobre onde ela reside.");
  }
}