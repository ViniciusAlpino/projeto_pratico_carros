import 'package:dio/dio.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/year_reposity.dart';

class YearReposityImp implements YearReposity {

  YearReposityImp();

@override
  Future<List<PostModel>> getList(String codigomodelo, String codigomarca) async {
    try {
      var response = await Dio().get('https://parallelum.com.br/fipe/api/v1/carros/marcas/$codigomarca/modelos/$codigomodelo/anos',
      );
      var list = response.data as List;
      print( response.data);
      return list.map((e)=> PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return[];
  }
}