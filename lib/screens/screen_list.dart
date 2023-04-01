import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/screen_catelogue.dart';
import 'package:shoppingapp/screens/screen_drawer.dart';
import 'package:shoppingapp/screens/screen_manage.dart';
import 'package:shoppingapp/screens/screen_orders.dart';
import 'package:shoppingapp/screens/screen_payments.dart';
import 'package:shoppingapp/screens/sreen_premium.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(child: Text('HOME')),
      ),
      //  drawer: showdrawer(),
      body: ListView(children: [
        ListTile(
          leading: const Icon(Icons.more_vert),
          title: const Text('Addtional Information'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ScreenDrawer(),
            ));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: const Icon(Icons.manage_history),
          title: const Text('Manage Store'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ScreenManage(
                title: 'Mange Store',
              ),
            ));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: const Icon(Icons.shopping_bag),
          title: const Text('Order'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ScreenOrder(),
            ));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: const Icon(Icons.card_giftcard_sharp),
          title: const Text('Catalouge'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CatelogueScreen(),
            ));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: const Icon(Icons.currency_rupee_sharp),
          title: const Text('Payment'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PaymentScreen(),
            ));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: const Icon(Icons.workspace_premium_outlined),
          title: const Text('Dukaan Premium'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PremiumScreen(),
            ));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ]),
    );
  }
}
