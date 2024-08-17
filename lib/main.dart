import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/mygamescreen.dart';
import 'package:tictactoe/myprovider.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MyProvider(), )],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyGameScreen(),
      ),
    );
  }
}
