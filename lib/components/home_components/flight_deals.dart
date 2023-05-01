import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/services/http/http.dart';
import 'package:intl/intl.dart';

class FlightDeals extends StatefulWidget {
  const FlightDeals({super.key});

  @override
  State<FlightDeals> createState() => _FlightDealsState();
}

class _FlightDealsState extends State<FlightDeals> {
  List<dynamic> flights = [];

  @override
  void initState() {
    super.initState();
    getAllFlightDeal();
    //getStaticprices();
  }

  Future<dynamic> getAllFlightDeal() async {
    var deals = await HttpReuests().getFlightDeals();

    if (deals != null) {
      setState(() {
        flights = deals;
      });
    }
  }

  final pssImg =
      'https://www.wakanow.com/assets/images/icons/paysmallsmall.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 330,
        child: ListView.builder(
            itemCount: flights.length,
            itemBuilder: (context, index) {
              final flight = flights[index];
              final destImgUrl = flight['DestinationCityImageUrl'];
              final depCity = flight['DepartureCity'];
              final destCity = flight['DestinationCity'];
              final airlineImg = flight['AirlineImageUrl'];
              final departDate = flight['DepartureDate'];
              final returnDate = flight['ReturnDate'];
              final staticPrice = flight['StaticDynamicPriceList'][0]['Amount'];
              final pss = 0.28 * staticPrice;
              final convertedDepatDate = DateTime.tryParse(departDate);
              final convertReturnDate = DateTime.tryParse(returnDate);

              return Column(
                //Display destination and itinerary
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 360,
                        width: MediaQuery.of(context).size.width - 25,
                        child: Column(children: [
                          Image.network(
                            destImgUrl,
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            fit: BoxFit.cover,
                          ),

                          //Display Price
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.network(
                                            pssImg,
                                            width: 40,
                                            height: 80,
                                          ),

                                          const SizedBox(
                                            width: 10,
                                          ),

                                          //Pss price
                                          Column(
                                            children: [
                                              Text(
                                                'N${pss.toInt()}',
                                                style: TextStyle(
                                                    color: ColorCharts
                                                        .defaultColor,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                'Pay small small',
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    ' | ',
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'N${staticPrice.toInt()}',
                                        style: TextStyle(
                                            color: ColorCharts.black,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        '${DateFormat('MMM d').format(convertedDepatDate!)} - ${DateFormat('MMM d').format(convertReturnDate!)} ',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: 75,
                        color: Colors.black45.withOpacity(0.2),
                        width: MediaQuery.of(context).size.width - 25,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        depCity,
                                        style: TextStyle(
                                            color: ColorCharts.whiteBg),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 14,
                                        color: ColorCharts.whiteBg,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    destCity,
                                    style: TextStyle(
                                        color: ColorCharts.whiteBg,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Image.network(
                                airlineImg,
                                width: 50,
                                height: 70,
                              )
                            ]),
                      ),
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
