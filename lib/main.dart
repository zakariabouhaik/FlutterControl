import 'package:contr/Screens/home.page.dart';
import 'package:contr/Screens/login.page.dart';
import 'package:contr/Screens/register.page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}


class MyApp	 extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent), useMaterial3: true),
      title: 'KKKKKK',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login':(context)=>LoginPage(),
        '/home':(context)=>HomePage(),
        '/register':(context)=>RegisterPage()
        },
      home: HomePage(),
    );
  }
}