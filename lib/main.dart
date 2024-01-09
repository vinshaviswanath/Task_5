
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/controller/controller.dart';
import 'package:task5/views/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
  
    return ChangeNotifierProvider(
      
      create: (context) => HomeController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
     
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: Screen2(),
      ),
    );
  }
}


