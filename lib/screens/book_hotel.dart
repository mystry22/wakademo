import 'package:flutter/material.dart';
import 'package:wakademo/components/hotel_components/add_button.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/components/hotel_components/book_button.dart';
import 'package:wakademo/components/hotel_components/book_options_dest.dart';
import 'package:wakademo/components/hotel_components/check_in.dart';
import 'package:wakademo/components/hotel_components/guest.dart';
import 'package:wakademo/reusable_components/multi_reusable_button.dart';
import 'package:wakademo/screens/home.dart';

class BookHotel extends StatefulWidget {
  const BookHotel({super.key});

  @override
  State<BookHotel> createState() => _BookHotelState();
}

class _BookHotelState extends State<BookHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCharts.defaultColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SingleChildScrollView(
            child: Column(children: [
              //spacing

              //Hotel Button
              const BookButton(
                bg: Color(0xff007bff),
                wt: 100,
                ht: 30,
                border: Color(0Xffffffff),
                name: 'Hotel',
              ),

              //spacing
              const SizedBox(
                height: 20,
              ),

              const BookOptionDest(),

              //spacing
              const SizedBox(
                height: 10,
              ),

              const CheckIn(),

              //spacing
              const SizedBox(
                height: 10,
              ),

              //guest
              const Guest(),

              //spacing
              const SizedBox(
                height: 30,
              ),

              //Add room
              const AddButton(
                caption: 'Add Room',
              ),

              //spacing
              const SizedBox(
                height: 30,
              ),

              //Search
              MultiReusablebutton(
                name: 'SEARCH',
                bg: Color(0Xfffd7e14),
                ht: 50,
                func: () {},
              ),

              //spacing
              const SizedBox(
                height: 10,
              ),

              //Best Price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: ColorCharts.whiteBg,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Best price guarantee',
                    style: TextStyle(color: ColorCharts.whiteBg),
                  ),
                ],
              ),

              //spacing
              const SizedBox(
                height: 20,
              ),

              //Wakapoit
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://wakanow-images.azureedge.net/SlideBannerImages/wakapoints.png',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //Cancel
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: ColorCharts.lightBlack)),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: ColorCharts.whiteBg),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
