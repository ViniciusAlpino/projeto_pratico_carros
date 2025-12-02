import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/controllers/year_controller.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/year_reposity_imp.dart';

class YearPage extends StatefulWidget {
  final PostModel modelo;
  final PostModel marca;
  const YearPage({super.key, required this.modelo, required this.marca});

  @override
  State<YearPage> createState() => _YearPageState();
}

class _YearPageState extends State<YearPage> {
  late YearController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YearController(
      YearReposityImp(),
      widget.modelo.codigo,
      widget.marca.codigo,
    );
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.modelo.nome, style: TextStyle(color: Colors.white)),
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
              onTap: () {
                print(list[idx].nome);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        YearPage(modelo: list[idx], marca: widget.marca),
                  ),
                );
              },
            ),
            separatorBuilder: (_, __) => Divider(),
          );
        },
      ),
    );
  }
}
