import 'package:flutter/widgets.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/details_reposity.dart';

class DetailsController {
  final DetailsReposity _reposity;
  final String codigomarca;
  DetailsController(this._reposity, this.codigomarca);


  ValueNotifier<List<PostModel>> modelos =  ValueNotifier<List<PostModel>>([]);


  fetch() async{
    modelos.value = await _reposity.getList(codigomarca);
  }
}
