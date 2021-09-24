import 'package:flutter/material.dart';

Widget buildLoadingWidget() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Loading data from API..."),
        CircularProgressIndicator()
      ],
    ),
  );
}
