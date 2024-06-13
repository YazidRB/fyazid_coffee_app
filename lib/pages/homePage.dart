import 'package:flutter/material.dart';
import 'package:fyazidrb_coffee_shop/pages/cardPage.dart';
import 'package:fyazidrb_coffee_shop/pages/shopPage.dart';
import 'package:fyazidrb_coffee_shop/utils/myBottomBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // selected page Home by default
  int _selectedPage = 0;

  // list of pages
  final List _pages = [const Shoppage(), const Cardpage()];

  //change the page
  onChanged(int pageIndex) {
    setState(() {
      _selectedPage = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Mybottombar(
        pageChanged: (val) => onChanged(val),
      ),
      body: _pages[_selectedPage],
    );
  }
}
