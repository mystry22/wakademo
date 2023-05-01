import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:dotted_border/dotted_border.dart';

class AddButton extends StatelessWidget {
  final String caption;
  const AddButton({super.key,
  required this.caption
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: ColorCharts.whiteBg,
      dashPattern: [6, 8],
      radius: Radius.circular(10),
      borderType: BorderType.RRect,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 60),
          backgroundColor: ColorCharts.defaultColor,
          // shape:
          //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: ColorCharts.whiteBg,
            ),
            Text(
              caption,
              style: TextStyle(color: ColorCharts.whiteBg),
            ),
          ],
        ),
      ),
    );
  }
}
