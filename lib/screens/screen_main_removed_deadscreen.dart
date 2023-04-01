// import 'package:flutter/material.dart';
// import 'package:shoppingapp/screens/screen_catelogue.dart';
// import 'package:shoppingapp/screens/screen_manage.dart';

// import 'package:shoppingapp/screens/screen_payments.dart';
// import 'package:shoppingapp/screens/sreen_premium.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int index = 0;
//   bool switchState = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(right: 0),
//         child: BottomNavigationBar(
//           selectedItemColor: Colors.blue[500],
//           unselectedItemColor: Colors.teal,
//           showSelectedLabels: true,
//           type: BottomNavigationBarType.fixed,
//           currentIndex: index,
//           onTap: (value) {
//             setState(() {
//               index = value;
//             });
//           },
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.library_books_outlined,
//               ),
//               label: 'Manage Store',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.list,
//               ),
//               label: 'Catelogue',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.payment,
//               ),
//               label: 'Orders ',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.payment,
//               ),
//               label: 'Premium ',
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
