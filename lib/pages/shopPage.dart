import 'package:flutter/material.dart';
import 'package:fyazidrb_coffee_shop/models/coffee.dart';
import 'package:fyazidrb_coffee_shop/models/shopCoffee.dart';
import 'package:fyazidrb_coffee_shop/utils/coffeeTile.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  // add coffee to the card
  addToCard(Coffee coffee) {
    Provider.of<Shopcoffee>(context, listen: false).addCoffeeToCart(coffee);

    // let the user know that he add an item
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Coffee Added to the Card !"),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shopcoffee>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 8,
            left: 8,
          ),
          child: Column(
            children: [
              Text(
                'Chose You Favorite Coffee ',
                style: TextStyle(
                    color: Colors.brown[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Coffeetile(
                      coffeeName: value.coffeList[index].name,
                      imagePath: value.coffeList[index].imagePath,
                      price: value.coffeList[index].price,
                      icon: Icons.add,
                      onPressed: () => addToCard(value.coffeList[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
