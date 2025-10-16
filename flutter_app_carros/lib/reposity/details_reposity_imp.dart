import 'package:dio/dio.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/details_reposity.dart';

class DetailsReposityImp implements DetailsReposity {

  DetailsReposityImp();

@override
  Future<List<PostModel>> getList(String codigomarca) async {
    try {
      var response = await Dio().get('https://parallelum.com.br/fipe/api/v1/carros/marcas/$codigomarca/modelos',
      );
      var list = response.data['modelos'] as List;
      print( response.data['modelos']);
      return list.map((e)=> PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return[];
  }
}