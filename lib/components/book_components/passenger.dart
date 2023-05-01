import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class Passenger extends StatefulWidget {
  final String travelItinerary;
  final String pass;

  const Passenger({
    super.key,
    required this.travelItinerary,
    required this.pass
  });

  @override
  State<Passenger> createState() => _PassengerState();
}

class _PassengerState extends State<Passenger> {
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
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.travelItinerary,
                  style: TextStyle(color: ColorCharts.lightBlack),
                  textAlign: TextAlign.start),
              Text(widget.pass,
                  style: TextStyle(
                      color: ColorCharts.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start),
            ],
          ),
        ),
      ),
    );
  }
}
