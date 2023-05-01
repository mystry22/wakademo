import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class MultiCityItinerary extends StatefulWidget {
  final String depart;
  final String returnIt;
  const MultiCityItinerary({super.key,
  required this.depart,
  required this.returnIt,
  });

  @override
  State<MultiCityItinerary> createState() => _MultiCityItineraryState();
}

class _MultiCityItineraryState extends State<MultiCityItinerary> {
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
                widget.depart,
                style: TextStyle(color: ColorCharts.black, fontSize: 18),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorCharts.black,
              size: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                widget.returnIt,
                style: TextStyle(color: ColorCharts.black, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
