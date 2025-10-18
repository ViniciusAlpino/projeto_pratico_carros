class EspecModel {
  final String TipoVeiculo;
  final int Valor;
  final String Marca;
  final String Modelo;
  final String Ano;
  final String Combustivel;
  final String CodigoFipe;
  final String MesReferencia;
  final String SiglaCombustivel;

  EspecModel(
    this.TipoVeiculo,
    this.Valor,
    this.Marca,
    this.Modelo,
    this.Ano,
    this.Combustivel,
    this.CodigoFipe,
    this.MesReferencia,
    this.SiglaCombustivel,
  );

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
      json['SiglaCombustivel'],
    );
  }
}
