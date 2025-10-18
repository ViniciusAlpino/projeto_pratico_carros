import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/Pages/year_page.dart';
import 'package:flutter_app_chamada/controllers/details_controller.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/details_reposity_imp.dart';

class DetailsPage extends StatefulWidget {
  final PostModel marca;
  const DetailsPage({super.key, required this.marca});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late DetailsController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DetailsController(DetailsReposityImp(), widget.marca.codigo);
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.marca.nome, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.modelos,
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
                    builder: (_) => YearPage(modelo: list[idx], marca: widget.marca,),
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
