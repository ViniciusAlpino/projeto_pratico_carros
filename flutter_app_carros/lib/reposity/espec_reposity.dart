import 'package:flutter_app_chamada/models/espec_model.dart';

abstract class EspecReposity {
  Future<List<EspecModel>> getList(String codigomodelo, String codigomarca, String codigoano);
}