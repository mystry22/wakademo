import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class DepartReturn extends StatefulWidget {
  final String depart;
  final String returnDate;
  const DepartReturn({
    super.key,
    required this.depart,
    required this.returnDate,
  });

  @override
  State<DepartReturn> createState() => _DepartReturnState();
}

class _DepartReturnState extends State<DepartReturn> {
  void _setDepartureDate() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  void _setReturnDate() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: ColorCharts.whiteBg),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //Departure
        GestureDetector(
          onTap: _setDepartureDate,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.depart,
                  style: TextStyle(color: ColorCharts.lightBlack),
                  textAlign: TextAlign.start),
              Text('Tue, 9 May',
                  style: TextStyle(
                      color: ColorCharts.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start),
            ],
          ),
        ),

        //Icon
        Icon(
          Icons.arrow_forward,
          color: ColorCharts.defaultColor,
        ),

        //Return

        GestureDetector(
          onTap: _setReturnDate,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.returnDate,
                  style: TextStyle(color: ColorCharts.lightBlack),
                  textAlign: TextAlign.start),
              Text('Wed, 10 May',
                  style: TextStyle(
                      color: ColorCharts.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start),
            ],
          ),
        ),
      ]),
    );
  }
}
