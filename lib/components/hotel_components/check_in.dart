import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class CheckIn extends StatelessWidget {
  const CheckIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorCharts.whiteBg),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          //Check In
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Check-In',
                  style: TextStyle(color: ColorCharts.lightBlack),
                  textAlign: TextAlign.start),
              Text('Teu, 9, May',
                  style: TextStyle(
                      color: ColorCharts.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start),
            ],
          ),

          //Icon
          Icon(
            Icons.arrow_forward,
            color: ColorCharts.defaultColor,
          ),

          //Check out

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Check-Out',
                  style: TextStyle(color: ColorCharts.lightBlack),
                  textAlign: TextAlign.start),
              Text('Wed, 10 May',
                  style: TextStyle(
                      color: ColorCharts.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start),
            ],
          ),


        ]),
      ),
    );
  }
}
