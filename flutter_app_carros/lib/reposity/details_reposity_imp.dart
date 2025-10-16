import 'package:dio/dio.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/home_reposity.dart';

class DetailsReposityImp implements HomeReposity {
  final int codigo;

  DetailsReposityImp(this.codigo,);


  Future<List<PostModel>> getList() async {
    try {
      var response = await Dio().get('https://parallelum.com.br/fipe/api/v1/carros/marcas/59/modelos',
      );
      var list = response.data['modelos'] as List;
      return list.map((e)=> PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return[];
  }
}