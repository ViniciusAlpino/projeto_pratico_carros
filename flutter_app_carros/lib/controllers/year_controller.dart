import 'package:flutter/widgets.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/year_reposity.dart';

class YearController {
  final YearReposity _yearReposity;
  final String codigoano;
  final String codigomarca;
  YearController(this._yearReposity, this.codigoano, this.codigomarca);


  ValueNotifier<List<PostModel>> anos =  ValueNotifier<List<PostModel>>([]);



  fetch() async{
    anos.value = await _yearReposity.getList(codigoano, codigomarca);
  }
}
