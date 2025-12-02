class EspecModel {
  final String tipo;
  final int valor;
  final String marca;
  final String modelo;
  final String ano;
  final String combustivel;
  final String fipe;
  final String mes;

EspecModel(this.tipo, this.valor, this.marca, this.modelo, this.ano, this.combustivel, this.fipe, this.mes);

  factory EspecModel.fromJson(Map json) {
    return EspecModel(
      json['TipoVeiculo'],
      json['Valor'],
      json['Marca'],
      json['Modelo'],
      json['Ano'],
      json['Combustivel'],
      json['CodigoFipe'],
      json['MesReferencia'],
    );
  }

  
}
