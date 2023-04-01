import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/screen_orders.dart';

Widget showOrders(
    {required Widget order,
    required Image itemImage,
    required Widget date,
    required Widget amount,
    required BuildContext context}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ScreenOrder()),
      );
    },
    child: Row(
      children: [
        itemImage,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  order,
                  const SizedBox(
                    width: 120,
                  ),
                  amount,
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  date,
                  const SizedBox(
                    width: 100,
                  ),
                  const Icon(Icons.circle, color: Colors.green, size: 10),
                  const Text('Successfull'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        ),
      ],
    ),
  );
}
