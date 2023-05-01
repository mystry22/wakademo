import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpReuests {
  var client = http.Client();

  getHorizontalSlides() async {
    var uri = Uri.parse(
        'https://wkn-api-banner-production-prod.azurewebsites.net/api/banner/ng-home');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var jsonFormat = jsonDecode(response.body);
      var res = jsonFormat["Result"];
      var content = res['Content'];
      print(content);
      return content;
    } 
  }

  getFlightDeals() async {
    var uri = Uri.parse(
        'https://wakanow-api-configuration-production-prod.azurewebsites.net/api/configuration/Marketing/Deals/');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var jsonFormat = jsonDecode(response.body);
      var flightDeals = jsonFormat['FlightDeals'];
      return flightDeals;
    } else {
      print('err');
    }
  }

  getImage() async {
    var url =
        'https://wakanow-images.azureedge.net/SlideBannerImages/wakapoints.png';
    var uri = Uri.parse(url);
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      return url;
    } else {
      return null;
    }
  }
}
