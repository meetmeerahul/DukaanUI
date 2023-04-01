import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/screen_list.dart';

import 'package:shoppingapp/widgets/appbar.dart';
import 'package:shoppingapp/widgets/drawer.dart';
import 'package:shoppingapp/widgets/orders.dart';

List<Widget> orderId = [
  const Text('Order #12345'),
  const Text('Order #12456'),
  const Text('Order #89465'),
  const Text('Order #54678'),
  const Text('Order #45637'),
  const Text('Order #67846'),
  const Text('Order #90876'),
  const Text('Order #87945')
];

List<Widget> orderDate = [
  const Text('Apr 02, 11:59 PM'),
  const Text('Apr 17, 12:59 PM'),
  const Text('Mar 02, 11:59 AM'),
  const Text('Aug 14, 01:59 PM'),
  const Text('Sep 03, 08:59 AM'),
  const Text('Jul 08, 09:59  AM'),
  const Text('Dec 18, 10:15 AM'),
  const Text('Nov 23, 06:19  AM')
];

List<Widget> price = [
  const Text(
    '₹799',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹799',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹399',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹699',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹449',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹599',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹1299',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹1199',
    style: TextStyle(fontSize: 15),
  )
];

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int n = orderId.length;

  bool isVisible = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenList()),
            );
          },
          icon: const BackButtonIcon(),
        ),
      ),
      //drawer: showDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Card(
              color: Colors.white,
              //elevation: 10.0,
              child: SizedBox(
                height: 210,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'A free limit up to which you will receive',
                        style: TextStyle(
                            fontSize: 15, letterSpacing: 1, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'the online payments directly in your bank',
                        style: TextStyle(
                            fontSize: 15, letterSpacing: 1, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // const SliderTheme(
                      //   data: SliderThemeData(
                      //       trackShape: RectangularSliderTrackShape(),
                      //       thumbShape: RoundSliderThumbShape(
                      //         enabledThumbRadius: 1,
                      //       ),
                      //       disabledThumbColor: Colors.blue,
                      //       disabledActiveTrackColor: Colors.blue),
                      //   child: Slider(
                      //     autofocus: false,
                      //     min: 0,
                      //     max: 10,
                      //     onChanged: (null),
                      //     value: 4,
                      //   ),
                      // ),

                      const LinearProgressIndicator(
                          backgroundColor: Colors.grey, value: 0.3),

                      const Text(
                        '36,668 left out of 50000',
                        style: TextStyle(
                            fontSize: 18, letterSpacing: 1, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(110, 30),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.all(0.0),
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                        child: const Text('Increase Limit'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Defalut Method',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Online payments',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Payment Profile',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'bank Accounts',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 2,
              color: Colors.black12,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Payments Overview',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 105,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    isVisible = !isVisible;
                  }),
                  child: Row(
                    children: [
                      const Text(
                        'Lifetime',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Icon(isVisible == true
                          ? (Icons.expand_less)
                          : Icons.expand_more)
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: isVisible,
              child: Row(
                children: [
                  Container(
                    width: 175,
                    height: 100,
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'AMOUNT ON HOLD',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹ 0',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 175,
                    height: 100,
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'AMOUNT RECEIVED',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹ 13,332',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Transactions',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(110, 30),
                    foregroundColor: Colors.black54,
                    backgroundColor: const Color.fromARGB(255, 239, 235, 235),
                    padding: const EdgeInsets.all(0.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('On Hold'),
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(110, 30),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(0.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Payouts'),
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(110, 30),
                    foregroundColor: Colors.black54,
                    backgroundColor: const Color.fromARGB(255, 239, 235, 235),
                    padding: const EdgeInsets.all(0.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Refunds'),
                ),
              ],
            ),
            for (int i = 0; i < n; i++)
              showOrders(
                amount: price[i],
                itemImage: Image.asset('assets/$i.jpeg', height: 50, width: 50),
                date: orderDate[i],
                order: orderId[i],
                context: context,
              ),
          ],
        ),
      ),
    );
  }
}
