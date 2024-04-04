void main() {
  Banco contaBancaria = Banco();
  contaBancaria.agencia = "15614-6";
  contaBancaria.conta = "646465";
  contaBancaria.nome = "Lucas Ramos";
  contaBancaria.nome;
  contaBancaria.visualizarAgencia;
  contaBancaria.visualizarConta;
  contaBancaria.dia = 4;
  contaBancaria.mes = 2;
  contaBancaria.ano = 2004;
  contaBancaria.ano = 2004;
  contaBancaria.visualizarSaldo;
  contaBancaria.receber = 500;
  contaBancaria.visualizarSaldo;
  contaBancaria.sacar = 10;
  contaBancaria.visualizarSaldo;
  contaBancaria.sacar = 1000;
  contaBancaria.visualizarSaldo;
  contaBancaria.verificarChequeEspecial;
  print(contaBancaria.dataAniversario);

  print("=-========================================================");
  // Banco outraContaBancaria =
  //     Banco("15614-6", "646465", "Thalita Vitoria", 20, 2, 2003);
  // outraContaBancaria.visualizarAgencia;
  // outraContaBancaria.visualizarConta;

  // outraContaBancaria.visualizarSaldo;
  // outraContaBancaria.receber = 500;
  // outraContaBancaria.visualizarSaldo;
  // outraContaBancaria.sacar = 10;
  // outraContaBancaria.visualizarSaldo;
  // outraContaBancaria.sacar = 1000;
  // outraContaBancaria.visualizarSaldo;
  // outraContaBancaria.verificarChequeEspecial;
  // print(outraContaBancaria.dataAniversario);

  // int data = 4;
  // int dataa = 2;
  // int dataaA = 2004;
  // String dataCorreta = "$data/$data/$dataaA";
  // print(dataCorreta);
}

class Banco {
  String? _agencia;
  String? _conta;
  String? _nomeCliente;
  int? _diaNascimentoCliente;
  int? _mesNascimentoCliente;
  int? _anoNascimentoCliente;
  String? _dataNascimento;
  double _saldo = 0;
  double _chequeEspecial = 1500;
  double _limiteSaqueDiario = 1000;

  // {
  //   // _agencia = agencia;
  //   // _conta = conta;
  //   // _nomeCliente = nome;
  //   // _diaNascimentoCliente = dia;
  //   // _mesNascimentoCliente = mes;
  //   // _anoNascimentoCliente = ano;
  // }

  String? get visualizarAgencia {
    print("O número da agência é $_agencia");
    return _agencia;
  }

  set agencia(String? agencia) {
    _agencia = agencia;
  }

  String? get visualizarConta {
    print("O número da conta é $_conta");
    return _conta;
  }

  set conta(String? conta) {
    _conta = conta;
  }

  String? get nome {
    print("Nome: $_nomeCliente");
    return _nomeCliente;
  }

  set nome(String? nome) {
    _nomeCliente = nome;
  }

  int? get dia {
    print("Dia em que o cliente nasceu: $_diaNascimentoCliente");
    return _diaNascimentoCliente;
  }

  set dia(int? dia) {
    _diaNascimentoCliente = dia;
  }

  int? get mes {
    print("Mês em que o cliente nasceu: $_mesNascimentoCliente");
    return _mesNascimentoCliente;
  }

  set mes(int? mes) {
    _mesNascimentoCliente = mes;
  }

  int? get ano {
    print("Ano em que o cliente nasceu: $_anoNascimentoCliente");
    return _anoNascimentoCliente;
  }

  set ano(int? ano) {
    _anoNascimentoCliente = ano;
  }

  double? get visualizarSaldo {
    print("Saldo: $_saldo");
    return _saldo;
  }

  set receber(double valor) {
    _saldo = _saldo + valor;
  }

  set sacar(double valor) {
    if (valor < _limiteSaqueDiario) {
      _limiteSaqueDiario = _limiteSaqueDiario - valor;

      if (_saldo > valor) {
        _saldo = _saldo - valor;
      } else if ((_saldo + _chequeEspecial) > valor) {
        valor = valor - _saldo;
        _chequeEspecial = _chequeEspecial - valor;
        _saldo = 0;
        print("O seu saldo foi zerado, e debitamos $valor do cheque especial.");
      } else {
        print("saldo insuficiente!");
      }
    } else {
      print("Excedeu o limite diario!");
    }
  }

  double get verificarChequeEspecial {
    print("Valor do Cheque Especial disponível: $_chequeEspecial");
    return _chequeEspecial;
  }

  set usarChequeEspecial(double valorSaque) {
    if (valorSaque < _chequeEspecial) {
      _chequeEspecial = _chequeEspecial - valorSaque;
      print("Novo valor disponível: $_chequeEspecial");
    } else {
      print(
          "Valor para saque indisponível! O valor disponível é de $_chequeEspecial");
      _chequeEspecial = _chequeEspecial;
    }
  }

  String? get dataAniversario {
    if (_dataNascimento == null) {
      _dataNascimento =
          "$_diaNascimentoCliente/$_mesNascimentoCliente/$_anoNascimentoCliente";
    }
    return _dataNascimento;
  }
}
