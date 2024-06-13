import 'package:flutter/material.dart';
import 'package:fyazidrb_coffee_shop/models/shopCoffee.dart';
import 'package:fyazidrb_coffee_shop/pages/homePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Shopcoffee(),
          ),
        ],
        child: const Homepage(),
      ),
    );
  }
}
