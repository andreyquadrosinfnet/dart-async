import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:training_dart_async/ViaCEP.dart';

void main(){
  consumirURL();

}
Future<void> consumirURL() async {
  var url = Uri.https('viacep.com.br', 'ws/01001000/json');
  var response = await http.get(url);
  if(response.statusCode == 200){
    ViaCEP.fromJson(jsonDecode(response.body));
  }else {
   throw Exception('Falhou!');
  }

}

// void main() {
//   p1();
//   print("Seja bem vindo ao programa Principal! ");
//   p2();
//   p5();
//   p6().then((mensagem) => print(mensagem));
// }
//
// void p2() {
//   print('Eu sou o processo P2! ');
// }
//
// void p1() {
//   Future.delayed(Duration(seconds: 10), () {
//     print('Eu sou o processo P1! ');
//   });
// }
//
// Future<void> p5() async {
//   Future.delayed(Duration(seconds: 5), () {
//     print('Eu sou o processo P5! ');
//   });
// }
//
// Future<String> p6() async {
//   print('Início do processo P6! ');
//   return Future.delayed(Duration(seconds: 7), () => "Fim do processo P6");
// }
