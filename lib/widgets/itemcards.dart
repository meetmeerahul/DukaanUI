import 'package:flutter/material.dart';

Widget showItemCard(
    {required int index, required Widget itemPrice, required itemName}) {
  return SizedBox(
    height: 180,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(20),
              leading: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset('assets/$index.jpeg'),
              ),
              title: itemName,
              subtitle: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('1 piece'),
                      itemPrice,
                      const Text(
                        'In Stock',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Column(
                children: const [
                  Icon(Icons.more_vert),
                  Icon(
                    Icons.toggle_on,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 400,
              child: Divider(
                color: Colors.black,
              ),
              // height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share_outlined),
                SizedBox(width: 50),
                Text('Share Product')
              ],
            )
          ],
        ),
      ),
    ),
  );
}
