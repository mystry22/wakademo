import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class MultiReusablebutton extends StatelessWidget {
  final String name;
  final Color bg;
  final double ht;
  final VoidCallback func;
  const MultiReusablebutton(
      {super.key,
      required this.name,
      required this.bg,
      required this.ht,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: ht,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: ColorCharts.whiteBg,fontSize: 18),
          ),
        ),
      ),
    );
  }
}
