import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mamadokitchen/providers/get_recepies_provider.dart';
import 'package:mamadokitchen/screens/Signin.dart';
import 'package:provider/provider.dart';

import 'screens/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetRecpiesAPI()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SignIn()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
            // color: Colors.white,
           image: DecorationImage(
            image: AssetImage(
            "assets/bg.jpg"),
      fit: BoxFit.cover,
    )
        ),
        child:Center(
          child: Image.asset('assets/logo.png'),
        )
    );
  }
}