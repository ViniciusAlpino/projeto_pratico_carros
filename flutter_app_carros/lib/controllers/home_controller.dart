import 'package:flutter/widgets.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/home_reposity.dart';

class HomeController {
  final HomeReposity _homeReposity;
  HomeController(this._homeReposity);


  ValueNotifier<List<PostModel>> marcas =  ValueNotifier<List<PostModel>>([]);


  fetch() async{
    marcas.value = await _homeReposity.getList();
  }
}
