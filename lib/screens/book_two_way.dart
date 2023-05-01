import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/components/book_components/book_navigation.dart';
import 'package:wakademo/components/book_components/dynamic_book_option.dart';
import 'package:wakademo/components/book_components/to_fro_booking.dart';
import 'package:wakademo/reusable_components/multi_reusable_button.dart';
import 'package:wakademo/screens/book.dart';
import 'package:wakademo/screens/book_multi_city.dart';
import 'package:wakademo/screens/home.dart';
import 'package:wakademo/services/http/http.dart';
import 'package:wakademo/components/book_components/passenger.dart';

class BookTwoWay extends StatefulWidget {
  const BookTwoWay({super.key});

  @override
  State<BookTwoWay> createState() => _BookTwoWayState();
}

class _BookTwoWayState extends State<BookTwoWay> {
  dynamic status = '';
  @override
  void initState() {
    super.initState();
    getStatus();
  }

  Future<dynamic> getStatus() async {
    var stat = HttpReuests().getImage();

    if (stat != null) {
      setState(() {
        status = 'ok';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorCharts.defaultColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: SingleChildScrollView(
              child: Column(children: [
                //Book Navigation Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BookNavigationButton(
                      bg: const Color(0xff007bff),
                      wt: 80,
                      ht: 30,
                      border: const Color(0xffffffff),
                      name: 'ONE WAY',
                      showborder: const Color(0xff007bff),
                      navigate: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Book();
                        }));
                      },
                    ),
                    BookNavigationButton(
                      bg: const Color(0xff007bff),
                      wt: 80,
                      ht: 30,
                      border: const Color(0xffffffff),
                      name: 'ROUND TRIP',
                      showborder: const Color(0xffffffff),
                      navigate: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const BookTwoWay();
                        }));
                      },
                    ),
                    BookNavigationButton(
                      bg: const Color(0xff007bff),
                      wt: 80,
                      ht: 30,
                      border: const Color(0xffffffff),
                      name: 'MULTI CITY',
                      showborder: const Color(0xff007bff),
                      navigate: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const BookMultiCity();
                        }));
                      },
                    ),
                  ],
                ),

                //spacing
                const SizedBox(
                  height: 20,
                ),

                const DynamicBookOption(
                  itinerary: 'From',
                  def: 'Lagos - Muritala Mohammed',
                ),

                //spacing
                const SizedBox(
                  height: 10,
                ),

                const DynamicBookOption(
                  itinerary: 'To',
                  def: 'LHR - London Heathrow',
                ),

                //spacing
                const SizedBox(
                  height: 10,
                ),

                //Round trip
                const DepartReturn(depart: 'Departure', returnDate: 'Return'),

                //spacing
                const SizedBox(
                  height: 30,
                ),

                //return
                const Passenger(
                    travelItinerary: 'Passenger & Class',
                    pass: 'Economy, 1 Adult'),

                //spacing
                const SizedBox(
                  height: 30,
                ),

                //Search
                MultiReusablebutton(
                  name: 'Find Flight',
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
                  child: Center(
                    child: status == 'ok'
                        ? Image.network(
                            'https://wakanow-images.azureedge.net/SlideBannerImages/wakapoints.png',
                            fit: BoxFit.cover,
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                          )
                        : CircularProgressIndicator(
                            color: ColorCharts.whiteBg,
                          ),
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Home();
                      }));
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
                ),
              ]),
            ),
          ),
        ));
  }
}
