import 'package:flutter/cupertino.dart';
import 'package:flutter_app_chamada/models/espec_model.dart';
import 'package:flutter_app_chamada/reposity/espec_reposity.dart';

class EspecController {
  final EspecReposity _especReposity;
  final String codigomodelo;
  final String codigomarca;
  final String codigoano;

  EspecController(
    this._especReposity,
    this.codigomodelo,
    this.codigomarca,
    this.codigoano,
  );

  ValueNotifier<List<EspecModel>> espec = ValueNotifier<List<EspecModel>>([]);

  fetch() async {
    espec.value = await _especReposity.getList(
      codigomodelo,
      codigomarca,
      codigoano,
    );
  }
}
