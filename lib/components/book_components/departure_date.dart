import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class DynamicTravelDate extends StatefulWidget {
  final String travelItinerary;

  const DynamicTravelDate({
    super.key,
    required this.travelItinerary,
  });

  @override
  State<DynamicTravelDate> createState() => _DynamicTravelDateState();
}

class _DynamicTravelDateState extends State<DynamicTravelDate> {
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showDatePicker,
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
              Text('Tue, 9 May',
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
