import 'package:flutter/material.dart';
import 'package:wakademo/services/http/http.dart';
import 'package:wakademo/utils/colors_chart.dart';

class SlideProducts extends StatefulWidget {
  const SlideProducts({super.key});

  @override
  State<SlideProducts> createState() => _SlideProductsState();
}

class _SlideProductsState extends State<SlideProducts> {
  List<dynamic> slides = [];
  String err = '';
  @override
  void initState() {
    super.initState();
    getAllSlides();
  }

  Future<dynamic> getAllSlides() async {
    var allSlides = await HttpReuests().getHorizontalSlides();
    setState(() {
      slides = allSlides;
    });
  }

  var baseUrl = 'https://wakanow-images.azureedge.net/SlideBannerImages/';

  @override
  Widget build(BuildContext context) {
    return slides.length > 0
        ? Column(
            children: [
              SizedBox(
                height: 140,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: slides.length,
                    itemBuilder: (context, index) {
                      final slide = slides[index];
                      final slidName = slide['FileName'];
                      final extension = slide['FileExtension'];
                      var dot = '.';
                      final uri = baseUrl + slidName + dot + extension;

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width - 50,
                            child: Image.network(
                              uri,
                              fit: BoxFit.fill,
                            ) // Foreground widget here
                            ),
                      );
                    }),
              ),
            ],
          )
        : CircularProgressIndicator(
            color: ColorCharts.defaultColor,
          );
  }
}
