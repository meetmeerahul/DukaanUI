import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/screen_list.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenList()),
            );
          },
          icon: const BackButtonIcon(),
        ),
        title: const Text('#Order 1688068'),
        centerTitle: true,
      ),
      //drawer: showDrawer(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'May 31,05:42 PM',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '1 ITEM ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Icon(
                      Icons.receipt,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Receipt',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/0.jpeg',
                      width: 50,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Explore | Men | Navyblue',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '1 Piece',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Size : XL',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Text('1 x 799'),
                              SizedBox(
                                width: 200,
                              ),
                              Text('Rs 799'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text('Item Total'),
                    SizedBox(
                      width: 244,
                    ),
                    Text('Rs 799'),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text('Delivary'),
                    SizedBox(
                      width: 256,
                    ),
                    Text(
                      'FREE',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Grand Total',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      'Rs 799',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'CUSTOMER DETAILS',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 15, 188, 236),
                      size: 25,
                    ),
                    Text(
                      'SHARE',
                      style:
                          TextStyle(color: Color.fromARGB(255, 15, 188, 236)),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Deepa',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      '+91-7829000484',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    Image.asset(
                      'lib/icons/telephone.png',
                      height: 40,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'lib/icons/whatsapp.png',
                      height: 40,
                      width: 30,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text('D 1101 Chartered Beverly'),
                  ],
                ),
                Row(
                  children: const [
                    Text('Hills Subramanyapura, PO'),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'City',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                    ),
                    Text('Pincode',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Banglore',
                    ),
                    SizedBox(
                      height: 10,
                      width: 74,
                    ),
                    Text('560061')
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Online',
                    ),
                    const SizedBox(
                      height: 5,
                      width: 250,
                    ),
                    Image.asset(
                      'lib/icons/paid.jpeg',
                      height: 30,
                      width: 50,
                    )
                  ],
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'ADDITIONAL INFORMATION',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'State',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Karnataka',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'Email',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'greeniceaqua@gmail.com',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: 40,
            child: TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(10, 30),
                foregroundColor: Colors.black54,
                backgroundColor: const Color.fromARGB(255, 239, 235, 235),
                padding: const EdgeInsets.all(0.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Share Receipt'),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
