import 'package:flutter/material.dart';
import 'package:wakademo/screens/book.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/screens/book_hotel.dart';
import 'package:wakademo/services/http/http.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: ColorCharts.defaultColor),
      child: Center(
        child: Column(
          children: [
            //spacing
            const SizedBox(
              height: 20,
            ),
    
            //Booking Text
            Align(
              alignment: FractionalOffset.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Make your bookings',
                  style: TextStyle(color: ColorCharts.whiteBg),
                ),
              ),
            ),
            //spacing
            const SizedBox(
              height: 10,
            ),
    
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const BookHotel();
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/hotel.png',
                  width: MediaQuery.of(context).size.width - 20,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
    
            //spacing
            const SizedBox(
              height: 20,
            ),
    
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Book();
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/flight.png',
                  width: MediaQuery.of(context).size.width - 20,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
    
            //spacing
            const SizedBox(
              height: 20,
            ),
    
            GestureDetector(
              onTap: () {
                HttpReuests().getFlightDeals();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/deals.png',
                  width: MediaQuery.of(context).size.width - 20,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
    
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
