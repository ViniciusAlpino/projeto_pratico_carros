import 'package:flutter_app_chamada/models/post_model.dart';

abstract class DetailsReposity {
  Future<List<PostModel>> getList(String codigomarca);
}
