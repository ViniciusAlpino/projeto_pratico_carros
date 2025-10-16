import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/controllers/home_controller.dart';
import 'package:flutter_app_chamada/models/post_model.dart';
import 'package:flutter_app_chamada/reposity/details_reposity_imp.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  HomeController _controller = HomeController(DetailsReposityImp());
  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(args.nome, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
