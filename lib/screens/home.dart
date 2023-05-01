import 'package:flutter/material.dart';
import 'package:wakademo/reusable_components/drawer.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/components/home_components/home_products.dart';
import 'package:wakademo/components/home_components/home_horizontal_scroll.dart';
import 'package:wakademo/components/home_components/signup_amazing_deals.dart';
import 'package:wakademo/components/home_components/flight_deals.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorCharts.defaultColor,
        title: const Text('Home'),
      ),
      endDrawer: const MenuAppBarr(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              //Products Component
              HomeProducts(),

              //spacing
              SizedBox(
                height: 30,
              ),

              //Horizontal Scroll Component
              SlideProducts(),

              //Signup Amazing Product
              SignUpAmazing(),

              //spacing
              SizedBox(
                height: 20,
              ),

              //Today deal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Today Deals',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Flight Deals')),
              ),

              //Flight Deals
              FlightDeals(),
            ],
          ),
        ),
      ),
    );
  }
}
