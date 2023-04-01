import 'package:flutter/material.dart';

Widget showFeatures(
    {required Widget iconImage,
    required Widget first,
    required Widget second,
    required Widget third}) {
  return Row(
    children: [
      const SizedBox(
        width: 30,
      ),
      CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.white,
          child: iconImage,
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 20,
          ),
          first,
          second,
          third,
        ],
      ),
      const SizedBox(
        height: 60,
      ),
    ],
  );
}
