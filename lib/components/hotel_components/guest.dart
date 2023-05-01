import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';

class Guest extends StatelessWidget {
  const Guest({super.key});

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
              
              
              Text(
                'Room 1',
                style:  TextStyle(color: ColorCharts.lightBlack),
                textAlign: TextAlign.start
            
              ),
        
              Text(
                '1 Adult',
                style:  TextStyle(color: ColorCharts.black,fontWeight: FontWeight.bold),
                textAlign: TextAlign.start
                
          
              ),
        
              
            ],
          ),
        ),
      ),
    );
  }
}
