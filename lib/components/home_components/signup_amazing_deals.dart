import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/reusable_components/reusable_button.dart';

class SignUpAmazing extends StatelessWidget {
  const SignUpAmazing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://wakanow-images-prod.azureedge.net/Images/Common/Deals/Zanzibar.jpg', ),
          fit: BoxFit.cover
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        const Text('Sign up to get \n amazing deal ', style: TextStyle(fontWeight: FontWeight.bold),),
        ReusableButton(name: 'Create an Account', bg: ColorCharts.orange, wt: 150, ht: 40, func: (){})
      ],),
    );
  }
}
