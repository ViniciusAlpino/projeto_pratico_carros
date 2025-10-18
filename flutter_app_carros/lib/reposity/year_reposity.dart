import 'package:flutter_app_chamada/models/post_model.dart';

abstract class YearReposity {
  Future<List<PostModel>> getList(String codigoano, String codigomarca);
}
