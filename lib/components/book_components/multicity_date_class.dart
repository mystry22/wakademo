import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class MulticityDateClass extends StatefulWidget {
  final String travelDate;
  final String travelClass;
  const MulticityDateClass({super.key,
  required this.travelClass,
  required this.travelDate
  });

  @override
  State<MulticityDateClass> createState() => _MulticityDateClassState();
}

class _MulticityDateClassState extends State<MulticityDateClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: ColorCharts.whiteBg),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                widget.travelDate,
                style: TextStyle(color: ColorCharts.black, fontSize: 15),
              ),
            ),
            const Text('-',style:  TextStyle(fontSize: 20),),
            GestureDetector(
              onTap: () {},
              child: Text(
                widget.travelClass,
                style: TextStyle(color: ColorCharts.black, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
