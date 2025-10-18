import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/controllers/year_controller.dart';
import 'package:flutter_app_chamada/models/espec_model.dart';
import 'package:flutter_app_chamada/reposity/year_reposity_imp.dart';

class EspecPage extends StatefulWidget {
  final EspecModel modelo;
  final EspecModel marca;
  final EspecModel ano;

  const EspecPage({super.key, required this.modelo, required this.marca, required this.ano});


  @override
  State<EspecPage> createState() => _EspecPageState();
}

class _EspecPageState extends State<EspecPage> {
  late YearController _controller;

  @override
  void initState() {
    super.initState();
  _controller = YearController(YearReposityImp(), widget.modelo.Modelo, widget.marca.Marca,);
  _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.modelo.CodigoFipe, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.anos,
        builder: (_, list, __) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text(list[idx].nome, style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            separatorBuilder: (_, __) => Divider(),
          );
        },
      ),
    );
  }
}
