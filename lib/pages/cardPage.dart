import 'package:flutter/material.dart';
import 'package:fyazidrb_coffee_shop/models/shopCoffee.dart';
import 'package:fyazidrb_coffee_shop/utils/coffeeTile.dart';
import 'package:provider/provider.dart';

class Cardpage extends StatefulWidget {
  const Cardpage({super.key});

  @override
  State<Cardpage> createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  // delete a coffee from the card
  deleteCoffeeFromCard(int index) {
    Provider.of<Shopcoffee>(context, listen: false).removeCoffeeFromCart(index);

    // let the user know that he removed an item
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Coffee removed from  the Card !"),
      duration: Duration(seconds: 2),
    ));
  }

  // calc the total of the card
  totalCardCost() {
    int total = 0;
    for (var val in Provider.of<Shopcoffee>(context).cartList) {
      total += val.price;
    }

    return total;
  }

  // pay function for pay button
  pay() {
    // add your pay logic here
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        right: 10,
        left: 10,
      ),
      child: Consumer<Shopcoffee>(
        builder: (context, value, child) => Column(
          children: [
            Text(
              'Total Card Cost : ${totalCardCost()} \$',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.brown.shade700,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Coffeetile(
                    imagePath: value.cartList[index].imagePath,
                    coffeeName: value.cartList[index].name,
                    price: value.cartList[index].price,
                    icon: Icons.delete,
                    onPressed: () => deleteCoffeeFromCard(index),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: pay(),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.brown.shade400,
                    borderRadius: BorderRadius.circular(12)),
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "PAY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
