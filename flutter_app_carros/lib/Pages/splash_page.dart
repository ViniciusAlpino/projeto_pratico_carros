import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/services/prefs_services.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsServices.isAuth(),
      Future.delayed(Duration(seconds: 3)),
    ]).then((isAuthenticated) => isAuthenticated[0]
    ? Navigator.of(context).pushReplacementNamed('/home')
    : Navigator.of(context).pushReplacementNamed('/inicial'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Center(
        child:Lottie.asset('assets/car.json',
        width: 400, 
          height: 400, 
          fit: BoxFit.contain,),
      ),
    );
  }
}