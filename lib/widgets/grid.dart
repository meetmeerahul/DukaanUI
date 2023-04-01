import 'package:flutter/material.dart';

Widget showGrid(
    {required Widget str,
    required Widget inputicon,
    required MaterialColor clr,
    required int index}) {
  final testKey = index;

  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[300]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: clr),
                  width: 60,
                  height: 60,
                  child: inputicon,
                ),
              ),
              //const Icon(6 == 6 ? Icons.abc : Icons.abc)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: str,
          ),
          Column()
        ],
      ),
    ),
  );
}
