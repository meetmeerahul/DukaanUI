import 'package:flutter/material.dart';
import 'package:shoppingapp/widgets/appbar.dart';
import 'package:shoppingapp/widgets/drawer.dart';
import 'package:shoppingapp/widgets/grid.dart';

List<Widget> gridText = const [
  Text(
    'Marketing\nDesigns',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  Text(
    'Online\nPayments',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  Text(
    'Discount\nCoupons',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  Text(
    'My\nCustomers',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  Text(
    'Store QR\nCode',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  Text(
    'Extra\nCharges',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  Text(
    'Order\nForms',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
];
List<Widget> gridIcon = const [
  Icon(
    Icons.volume_up_rounded,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.currency_rupee_outlined,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.discount_outlined,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.person_2_rounded,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.qr_code_scanner_rounded,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.money_rounded,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.format_align_left,
    color: Colors.white,
    size: 30,
  ),
];

List<MaterialColor> bgColor = [
  Colors.amber,
  Colors.lightGreen,
  Colors.yellow,
  Colors.lightBlue,
  Colors.grey,
  Colors.purple,
  Colors.pink
];

List<MaterialAccentColor> bgcolo2 = [Colors.amberAccent, Colors.purpleAccent];

class ScreenManage extends StatelessWidget {
  const ScreenManage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(tittle: const Text('Manage Store')),
      //drawer: showDrawer(),
      body: GridView.count(
          childAspectRatio: 1.3,
          padding: const EdgeInsets.all(8),
          primary: false,
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: [
            for (int i = 0; i < gridIcon.length; i++)
              showGrid(
                  str: gridText[i],
                  inputicon: gridIcon[i],
                  clr: bgColor[i],
                  index: i)
          ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Orders',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Products',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: 'Manage',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined),
            label: 'Account',
            backgroundColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
