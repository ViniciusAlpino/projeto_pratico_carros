import 'package:dio/dio.dart';
import 'package:flutter_app_chamada/models/espec_model.dart';
import 'package:flutter_app_chamada/reposity/espec_reposity.dart';

class EspecReposityImp  implements EspecReposity{

  EspecReposityImp();

  @override
  Future<List<EspecModel>> getList(String codigomodelo, String codigomarca, String codigoano) async{
    try{
      var response = await Dio().get('https://parallelum.com.br/fipe/api/v1/carros/marcas/$codigomarca/modelos/$codigomodelo/anos/$codigoano',
      );
      var list = response.data as List;
      print(response.data);
      return list.map((e) => EspecModel.fromJson(e)).toList();
    }catch (e){
    print(e);
    }
    return[];
  }
}