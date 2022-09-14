import 'dart:convert';

class ViaCEP{
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String ibge;
  String gia;
  String ddd;
  String siafi;

  ViaCEP({required this.cep, required this.logradouro, required this.complemento, required this.bairro, required this.localidade, required this.ibge, required this.siafi, required this.gia, required this.ddd, required this.uf});

  factory ViaCEP.fromJson(Map<String, dynamic> json) {
    return ViaCEP(cep: json['cep'],
        logradouro: json['logradouro'],
        complemento: json['complemento'],
        bairro: json['bairro'],
        localidade: json['localidade'],
        ibge: json['ibge'],
        siafi: json['siafi'],
        gia: json['gia'],
        ddd: json['ddd'],
        uf: json['uf']);
  }

  Map<String, dynamic> toMap(){
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento':complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,

    };
  }
  String toJson() => jsonEncode(toMap());

}