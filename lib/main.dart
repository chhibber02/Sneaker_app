import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
      ),
    );
  }
}
