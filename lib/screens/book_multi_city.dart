import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/components/book_components/book_navigation.dart';
import 'package:wakademo/screens/book.dart';
import 'package:wakademo/screens/book_two_way.dart';
import 'package:wakademo/services/http/http.dart';
import 'package:wakademo/components/book_components/passenger.dart';
import 'package:wakademo/components/book_components/multicity_itinerary.dart';
import 'package:wakademo/components/book_components/multicity_date_class.dart';
import 'package:wakademo/components/hotel_components/add_button.dart';
import 'package:wakademo/reusable_components/reusable_button.dart';
import 'package:wakademo/screens/home.dart';

class BookMultiCity extends StatefulWidget {
  const BookMultiCity({super.key});

  @override
  State<BookMultiCity> createState() => _BookMultiCityState();
}

class _BookMultiCityState extends State<BookMultiCity> {
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
                      showborder: const Color(0xff007bff),
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
                      showborder: const Color(0xffffffff),
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
                  height: 15,
                ),

                const Passenger(
                  travelItinerary: 'Passenger',
                  pass: '1 Adult',
                ),

                //spacing
                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('TRIP A '),
                    Text(
                      ' - - - - - - - - - - - - - - - - - - - - - -',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),

                //spacing
                const SizedBox(
                  height: 15,
                ),

                const MultiCityItinerary(
                  depart: 'LOS',
                  returnIt: 'LHR',
                ),

                //spacing
                const SizedBox(
                  height: 10,
                ),

                const MulticityDateClass(
                  travelClass: 'Economy',
                  travelDate: 'Teu, 9 May',
                ),

                //spacing
                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('TRIP B '),
                    Text(
                      ' - - - - - - - - - - - - - - - - - - - - - -',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),

                //spacing
                const SizedBox(
                  height: 15,
                ),

                const MultiCityItinerary(
                  depart: 'LHR',
                  returnIt: 'LOS',
                ),

                //spacing
                const SizedBox(
                  height: 10,
                ),

                const MulticityDateClass(
                  travelClass: 'Economy',
                  travelDate: 'Teu, 9 May',
                ),

                //spacing
                const SizedBox(
                  height: 15,
                ),

                //Add Button
                const AddButton(
                  caption: 'Add Flight',
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
                  height: 15,
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

                //Cancel and Book

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
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
                    ReusableButton(
                        name: 'Find Flight',
                        bg: ColorCharts.orange,
                        wt: 120,
                        ht: 55,
                        func: () {})
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
