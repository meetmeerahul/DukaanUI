import 'package:flutter/material.dart';

showAppBar({required Widget tittle}) {
  return AppBar(
    leading: const BackButton(
      color: Colors.black,
    ),
    centerTitle: true,
    title: tittle,
  );
}
