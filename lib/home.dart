import 'package:flutter/material.dart';
import 'Card1.dart';
import 'Card2.dart';
import 'Card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemTapped(int index) {
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooferlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card1'
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2'
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3'
          )
        ],
      ),
    );
  }
}
