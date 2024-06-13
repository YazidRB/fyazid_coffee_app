import 'package:flutter/material.dart';

class Coffeetile extends StatelessWidget {
  const Coffeetile(
      {super.key,
      required this.imagePath,
      required this.coffeeName,
      required this.price,
      required this.icon,
      required this.onPressed});

  final String imagePath;
  final String coffeeName;
  final int price;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        tileColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        leading: Image.asset(
          imagePath,
        ),
        title: Text(
          coffeeName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        subtitle: Text(
          "$price \$",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.brown,
          ),
        ),
        trailing: IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
