import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final Color bg;
  final double wt;
  final double ht;
  final VoidCallback func;
  const ReusableButton(
      {super.key,
      required this.name,
      required this.bg,
      required this.wt,
      required this.ht,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        backgroundColor: bg,
        minimumSize: Size(wt, ht)

      ),
      child: Text(
        name,
        style: TextStyle(color: ColorCharts.whiteBg, fontSize: 15),
      ),
    );
  }
}
