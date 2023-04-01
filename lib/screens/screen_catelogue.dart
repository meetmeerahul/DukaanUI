import 'package:flutter/material.dart';
import 'package:shoppingapp/widgets/drawer.dart';
import 'package:shoppingapp/widgets/itemcards.dart';

class CatelogueScreen extends StatefulWidget {
  const CatelogueScreen({super.key});

  @override
  State<CatelogueScreen> createState() => _CatelogueScreenState();
}

class _CatelogueScreenState extends State<CatelogueScreen> {
  Color textColor = Colors.white;

  List<Widget> itemName = [
    const Text('Couch Potato | Women'),
    const Text('Couch Potato | Men | Bl...'),
    const Text('Mug | Explore'),
    const Text('Combo Blahst1 | Pack..'),
    const Text('Mug | Orchard'),
    const Text('Combo Blahst 2 | Expla..'),
    const Text('I See Combo Pack'),
    const Text('Kids Combo Blasht'),
  ];
  int index = 0;

  List<Widget> itemPrice = [
    const Text('₹799'),
    const Text('₹799'),
    const Text('₹399'),
    const Text('₹699'),
    const Text('₹449'),
    const Text('₹599'),
    const Text('₹1299'),
    const Text('₹1199'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: const Text('Catalogues'),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
              bottom: const TabBar(tabs: [
                Tab(
                  text: 'Products',
                ),
                Tab(
                  text: 'Categories',
                )
              ])),
        ),
        // drawer: showDrawer(),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemBuilder: (context, index) => showItemCard(
                    index: index,
                    itemName: itemName[index],
                    itemPrice: itemPrice[index]),
                itemCount: itemName.length,
              ),
            ),
            const Text(''),
          ],
        ),
      ),
    );
  }
}
