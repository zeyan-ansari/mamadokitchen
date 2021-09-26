import 'package:flutter/material.dart';
import 'package:mamadokitchen/providers/get_recepies_provider.dart';
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
        home: MyHomePage(),
      ),
    );
  }
}
