// // import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class ShowOrderDetails extends StatelessWidget {
//   Widget amount;
//   Widget 
//   const ShowOrderDetails(
//       {super.key,
//       required Widget amount,
//       required Widget date,
//       required Widget order,
//       required Image itemImage});

//   @override
//   Widget build(BuildContext context) {
//     showOrderDetails(order: this.order, date: this.date);
//   }

//   showOrderDetails(
//       {required Widget order,
//       required Image itemImage,
//       required Widget date,
//       required Widget amount,
//       required BuildContext context}) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {},
//           icon: const BackButtonIcon(),
//         ),
//         title: order,
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     date,
//                     const SizedBox(
//                       width: 120,
//                     ),
//                     const Icon(
//                       Icons.circle,
//                       size: 15,
//                       color: Colors.green,
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     const Text(
//                       'Delivered',
//                       style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.black54,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Container(
//                   width: 370,
//                   height: 2,
//                   color: Colors.black12,
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       '1 ITEM ',
//                       style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.black54,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       width: 188,
//                     ),
//                     Icon(
//                       Icons.receipt,
//                       color: Colors.black54,
//                     ),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Text(
//                       'Receipt',
//                       style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.black54,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     itemImage,
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Explore | Men | Navyblue',
//                             style: TextStyle(fontSize: 15),
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Text(
//                             '1 Piece',
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Text(
//                             'Size : XL',
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             children: [
//                               const Text('1x'),
//                               amount,
//                               const SizedBox(
//                                 width: 200,
//                               ),
//                               amount,
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 Container(
//                   width: 370,
//                   height: 2,
//                   color: Colors.black12,
//                 ),
//                 Row(
//                   children: [
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     const Text('Item Total'),
//                     const SizedBox(
//                       width: 244,
//                     ),
//                     amount,
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text('Delivary'),
//                     SizedBox(
//                       width: 256,
//                     ),
//                     Text(
//                       'FREE',
//                       style: TextStyle(
//                           color: Colors.green, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'Grand Total',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       width: 210,
//                     ),
//                     Text(
//                       'Rs 799',
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   width: 370,
//                   height: 2,
//                   color: Colors.black12,
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'CUSTOMER DETAILS',
//                       style: TextStyle(fontSize: 15, color: Colors.grey),
//                     ),
//                     SizedBox(
//                       width: 150,
//                     ),
//                     Icon(
//                       Icons.share,
//                       color: Color.fromARGB(255, 15, 188, 236),
//                       size: 25,
//                     ),
//                     Text(
//                       'SHARE',
//                       style:
//                           TextStyle(color: Color.fromARGB(255, 15, 188, 236)),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     const Text(
//                       'Deepa',
//                       style: TextStyle(color: Colors.black, fontSize: 18),
//                     ),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     const SizedBox(
//                       width: 210,
//                     ),
//                     Image.asset(
//                       'lib/icons/telephone.png',
//                       height: 30,
//                       width: 20,
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Image.asset(
//                       'lib/icons/whatsapp.png',
//                       height: 30,
//                       width: 20,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'Address',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text('D 1101 Chartered Beverly'),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text('Hills Subramanyapura, PO'),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(
//                       'City',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 30,
//                       width: 100,
//                     ),
//                     Text('Pincode',
//                         style: TextStyle(fontWeight: FontWeight.bold))
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(
//                       'Banglore',
//                     ),
//                     SizedBox(
//                       height: 10,
//                       width: 74,
//                     ),
//                     Text('560061')
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'Payment',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     const Text(
//                       'Online',
//                     ),
//                     const SizedBox(
//                       height: 5,
//                       width: 250,
//                     ),
//                     Image.asset(
//                       'lib/icons/paid.jpeg',
//                       height: 30,
//                       width: 50,
//                     )
//                   ],
//                 ),
//                 Container(
//                   width: 370,
//                   height: 2,
//                   color: Colors.black12,
//                 ),
//                 Row(
//                   children: const [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'ADDITIONAL INFORMATION',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(
//                       'State',
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(
//                       'Karnataka',
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: const [
//                     Text(
//                       'Email',
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(
//                       'greeniceaqua@gmail.com',
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 30,
//             width: 40,
//             child: TextButton(
//               style: TextButton.styleFrom(
//                 fixedSize: const Size(10, 30),
//                 foregroundColor: Colors.black54,
//                 backgroundColor: const Color.fromARGB(255, 239, 235, 235),
//                 padding: const EdgeInsets.all(0.0),
//                 textStyle: const TextStyle(fontSize: 20),
//               ),
//               onPressed: () {},
//               child: const Text('Share Receipt'),
//             ),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//         ],
//       ),
//     );
//   }
// }



// // class ShowOrderDetails {
// //   Widget? order;
// //   Image? itemimage;
// //   Widget? amount;
// //   Widget? date;

// //   ShowOrderDetails(this.order, this.itemimage, this.amount, this.date);

