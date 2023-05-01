// To parse this JSON data, do
//
//     final dealModel = dealModelFromJson(jsonString);

import 'dart:convert';

DealModel dealModelFromJson(String str) => DealModel.fromJson(json.decode(str));

String dealModelToJson(DealModel data) => json.encode(data.toJson());

class DealModel {
  List<FlightDeal> flightDeals;
  List<dynamic> airlineDeals;
  List<HotelDeal> hotelDeals;
  List<HotelDestinationDeal> hotelDestinationDeals;
  List<TopDestinationDeal> topDestinationDeals;
  List<dynamic> popularHotels;

  DealModel({
    required this.flightDeals,
    required this.airlineDeals,
    required this.hotelDeals,
    required this.hotelDestinationDeals,
    required this.topDestinationDeals,
    required this.popularHotels,
  });

  factory DealModel.fromJson(Map<String, dynamic> json) => DealModel(
        flightDeals: List<FlightDeal>.from(
            json["FlightDeals"].map((x) => FlightDeal.fromJson(x))),
        airlineDeals: List<dynamic>.from(json["AirlineDeals"].map((x) => x)),
        hotelDeals: List<HotelDeal>.from(
            json["HotelDeals"].map((x) => HotelDeal.fromJson(x))),
        hotelDestinationDeals: List<HotelDestinationDeal>.from(
            json["HotelDestinationDeals"]
                .map((x) => HotelDestinationDeal.fromJson(x))),
        topDestinationDeals: List<TopDestinationDeal>.from(
            json["TopDestinationDeals"]
                .map((x) => TopDestinationDeal.fromJson(x))),
        popularHotels: List<dynamic>.from(json["PopularHotels"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "FlightDeals": List<dynamic>.from(flightDeals.map((x) => x.toJson())),
        "AirlineDeals": List<dynamic>.from(airlineDeals.map((x) => x)),
        "HotelDeals": List<dynamic>.from(hotelDeals.map((x) => x.toJson())),
        "HotelDestinationDeals":
            List<dynamic>.from(hotelDestinationDeals.map((x) => x.toJson())),
        "TopDestinationDeals":
            List<dynamic>.from(topDestinationDeals.map((x) => x.toJson())),
        "PopularHotels": List<dynamic>.from(popularHotels.map((x) => x)),
      };
}

class FlightDeal {
  String airlineCode;
  String airlineName;
  int numberOfStops;
  dynamic stopText;
  String urlAirlineName;
  String airlineImageName;
  String airlineImageUrl;
  String airlineImageAlternativeUrl;
  String departureAirportCode;
  String departureAirportName;
  String departureCity;
  String destinationAirportCode;
  String destinationAirportName;
  String destinationCity;
  String destinationCityImageUrl;
  int daysBeforeDeparture;
  int duration;
  bool flightDealReturn;
  bool oneway;
  String cabinClass;
  bool dynamicPrice;
  double airlinePrice;
  int dynamicNumberOfStops;
  bool airlineDeal;
  bool staticDates;
  DateTime departureDate;
  DateTime returnDate;
  bool showDates;
  bool showCaptionText;
  String dealCaptionText;
  FlightPriceDiscounts? flightPriceDiscounts;
  String id;
  String geography;
  String currency;
  double amount;
  int discountedAmount;
  String priority;
  bool active;
  bool mainView;
  bool flightsView;
  bool hotelsView;
  String pageIdentifier;
  String dealPromoText;
  String dealsTitle;
  List<StaticDynamicPriceList> staticDynamicPriceList;
  bool slashedPrice;

  FlightDeal({
    required this.airlineCode,
    required this.airlineName,
    required this.numberOfStops,
    this.stopText,
    required this.urlAirlineName,
    required this.airlineImageName,
    required this.airlineImageUrl,
    required this.airlineImageAlternativeUrl,
    required this.departureAirportCode,
    required this.departureAirportName,
    required this.departureCity,
    required this.destinationAirportCode,
    required this.destinationAirportName,
    required this.destinationCity,
    required this.destinationCityImageUrl,
    required this.daysBeforeDeparture,
    required this.duration,
    required this.flightDealReturn,
    required this.oneway,
    required this.cabinClass,
    required this.dynamicPrice,
    required this.airlinePrice,
    required this.dynamicNumberOfStops,
    required this.airlineDeal,
    required this.staticDates,
    required this.departureDate,
    required this.returnDate,
    required this.showDates,
    required this.showCaptionText,
    required this.dealCaptionText,
    this.flightPriceDiscounts,
    required this.id,
    required this.geography,
    required this.currency,
    required this.amount,
    required this.discountedAmount,
    required this.priority,
    required this.active,
    required this.mainView,
    required this.flightsView,
    required this.hotelsView,
    required this.pageIdentifier,
    required this.dealPromoText,
    required this.dealsTitle,
    required this.staticDynamicPriceList,
    required this.slashedPrice,
  });

  factory FlightDeal.fromJson(Map<String, dynamic> json) => FlightDeal(
        airlineCode: json["AirlineCode"],
        airlineName: json["AirlineName"],
        numberOfStops: json["NumberOfStops"],
        stopText: json["StopText"],
        urlAirlineName: json["UrlAirlineName"],
        airlineImageName: json["AirlineImageName"],
        airlineImageUrl: json["AirlineImageUrl"],
        airlineImageAlternativeUrl: json["AirlineImageAlternativeUrl"],
        departureAirportCode: json["DepartureAirportCode"],
        departureAirportName: json["DepartureAirportName"],
        departureCity: json["DepartureCity"],
        destinationAirportCode: json["DestinationAirportCode"],
        destinationAirportName: json["DestinationAirportName"],
        destinationCity: json["DestinationCity"],
        destinationCityImageUrl: json["DestinationCityImageUrl"],
        daysBeforeDeparture: json["DaysBeforeDeparture"],
        duration: json["Duration"],
        flightDealReturn: json["Return"],
        oneway: json["Oneway"],
        cabinClass: json["CabinClass"],
        dynamicPrice: json["DynamicPrice"],
        airlinePrice: json["AirlinePrice"]?.toDouble(),
        dynamicNumberOfStops: json["DynamicNumberOfStops"],
        airlineDeal: json["AirlineDeal"],
        staticDates: json["StaticDates"],
        departureDate: DateTime.parse(json["DepartureDate"]),
        returnDate: DateTime.parse(json["ReturnDate"]),
        showDates: json["ShowDates"],
        showCaptionText: json["ShowCaptionText"],
        dealCaptionText: json["DealCaptionText"],
        flightPriceDiscounts: json["FlightPriceDiscounts"] == null
            ? null
            : FlightPriceDiscounts.fromJson(json["FlightPriceDiscounts"]),
        id: json["Id"],
        geography: json["Geography"],
        currency: json["Currency"],
        amount: json["Amount"]?.toDouble(),
        discountedAmount: json["DiscountedAmount"],
        priority: json["Priority"],
        active: json["Active"],
        mainView: json["MainView"],
        flightsView: json["FlightsView"],
        hotelsView: json["HotelsView"],
        pageIdentifier: json["PageIdentifier"],
        dealPromoText: json["DealPromoText"],
        dealsTitle: json["DealsTitle"],
        staticDynamicPriceList: List<StaticDynamicPriceList>.from(
            json["StaticDynamicPriceList"]
                .map((x) => StaticDynamicPriceList.fromJson(x))),
        slashedPrice: json["SlashedPrice"],
      );

  Map<String, dynamic> toJson() => {
        "AirlineCode": airlineCode,
        "AirlineName": airlineName,
        "NumberOfStops": numberOfStops,
        "StopText": stopText,
        "UrlAirlineName": urlAirlineName,
        "AirlineImageName": airlineImageName,
        "AirlineImageUrl": airlineImageUrl,
        "AirlineImageAlternativeUrl": airlineImageAlternativeUrl,
        "DepartureAirportCode": departureAirportCode,
        "DepartureAirportName": departureAirportName,
        "DepartureCity": departureCity,
        "DestinationAirportCode": destinationAirportCode,
        "DestinationAirportName": destinationAirportName,
        "DestinationCity": destinationCity,
        "DestinationCityImageUrl": destinationCityImageUrl,
        "DaysBeforeDeparture": daysBeforeDeparture,
        "Duration": duration,
        "Return": flightDealReturn,
        "Oneway": oneway,
        "CabinClass": cabinClass,
        "DynamicPrice": dynamicPrice,
        "AirlinePrice": airlinePrice,
        "DynamicNumberOfStops": dynamicNumberOfStops,
        "AirlineDeal": airlineDeal,
        "StaticDates": staticDates,
        "DepartureDate": departureDate.toIso8601String(),
        "ReturnDate": returnDate.toIso8601String(),
        "ShowDates": showDates,
        "ShowCaptionText": showCaptionText,
        "DealCaptionText": dealCaptionText,
        "FlightPriceDiscounts": flightPriceDiscounts?.toJson(),
        "Id": id,
        "Geography": geography,
        "Currency": currency,
        "Amount": amount,
        "DiscountedAmount": discountedAmount,
        "Priority": priority,
        "Active": active,
        "MainView": mainView,
        "FlightsView": flightsView,
        "HotelsView": hotelsView,
        "PageIdentifier": pageIdentifier,
        "DealPromoText": dealPromoText,
        "DealsTitle": dealsTitle,
        "StaticDynamicPriceList":
            List<dynamic>.from(staticDynamicPriceList.map((x) => x.toJson())),
        "SlashedPrice": slashedPrice,
      };
}

class FlightPriceDiscounts {
  bool showDiscountedPrice;
  int daysBeforeDeparture;
  int duration;
  dynamic departureDate;
  dynamic returnDate;
  dynamic staticDynamicDiscountPriceList;

  FlightPriceDiscounts({
    required this.showDiscountedPrice,
    required this.daysBeforeDeparture,
    required this.duration,
    this.departureDate,
    this.returnDate,
    this.staticDynamicDiscountPriceList,
  });

  factory FlightPriceDiscounts.fromJson(Map<String, dynamic> json) =>
      FlightPriceDiscounts(
        showDiscountedPrice: json["ShowDiscountedPrice"],
        daysBeforeDeparture: json["DaysBeforeDeparture"],
        duration: json["Duration"],
        departureDate: json["DepartureDate"],
        returnDate: json["ReturnDate"],
        staticDynamicDiscountPriceList: json["StaticDynamicDiscountPriceList"],
      );

  Map<String, dynamic> toJson() => {
        "ShowDiscountedPrice": showDiscountedPrice,
        "DaysBeforeDeparture": daysBeforeDeparture,
        "Duration": duration,
        "DepartureDate": departureDate,
        "ReturnDate": returnDate,
        "StaticDynamicDiscountPriceList": staticDynamicDiscountPriceList,
      };
}

class StaticDynamicPriceList {
  Currency currency;
  int amount;
  int numberOfStops;
  bool dynamicPrice;
  double dynamicAirlinePrice;
  int dynamicNumberOfStops;

  StaticDynamicPriceList({
    required this.currency,
    required this.amount,
    required this.numberOfStops,
    required this.dynamicPrice,
    required this.dynamicAirlinePrice,
    required this.dynamicNumberOfStops,
  });

  factory StaticDynamicPriceList.fromJson(Map<String, dynamic> json) =>
      StaticDynamicPriceList(
        currency: currencyValues.map[json["Currency"]]!,
        amount: json["Amount"],
        numberOfStops: json["NumberOfStops"],
        dynamicPrice: json["DynamicPrice"],
        dynamicAirlinePrice: json["DynamicAirlinePrice"]?.toDouble(),
        dynamicNumberOfStops: json["DynamicNumberOfStops"],
      );

  Map<String, dynamic> toJson() => {
        "Currency": currencyValues.reverse[currency],
        "Amount": amount,
        "NumberOfStops": numberOfStops,
        "DynamicPrice": dynamicPrice,
        "DynamicAirlinePrice": dynamicAirlinePrice,
        "DynamicNumberOfStops": dynamicNumberOfStops,
      };
}

enum Currency { NGN, USD }

final currencyValues = EnumValues({"NGN": Currency.NGN, "USD": Currency.USD});

class HotelDeal {
  String wakanowId;
  String locationId;
  String hotelName;
  String urlCountry;
  String urlCity;
  String urlHotelName;
  String city;
  String country;
  String imageName;
  String imageUrl;
  String imageAlternativeUrl;
  int starRating;
  int daysBeforeCheckIn;
  int duration;
  dynamic checkinDate;
  dynamic checkoutDate;
  bool preferAlternativeSource;
  String source;
  bool dynamicPrice;
  int dynamicAmount;
  String id;
  String geography;
  String currency;
  double amount;
  int discountedAmount;
  String priority;
  bool active;
  bool mainView;
  bool flightsView;
  bool hotelsView;
  String pageIdentifier;
  String dealPromoText;
  String dealsTitle;
  dynamic staticDynamicPriceList;
  bool slashedPrice;

  HotelDeal({
    required this.wakanowId,
    required this.locationId,
    required this.hotelName,
    required this.urlCountry,
    required this.urlCity,
    required this.urlHotelName,
    required this.city,
    required this.country,
    required this.imageName,
    required this.imageUrl,
    required this.imageAlternativeUrl,
    required this.starRating,
    required this.daysBeforeCheckIn,
    required this.duration,
    this.checkinDate,
    this.checkoutDate,
    required this.preferAlternativeSource,
    required this.source,
    required this.dynamicPrice,
    required this.dynamicAmount,
    required this.id,
    required this.geography,
    required this.currency,
    required this.amount,
    required this.discountedAmount,
    required this.priority,
    required this.active,
    required this.mainView,
    required this.flightsView,
    required this.hotelsView,
    required this.pageIdentifier,
    required this.dealPromoText,
    required this.dealsTitle,
    this.staticDynamicPriceList,
    required this.slashedPrice,
  });

  factory HotelDeal.fromJson(Map<String, dynamic> json) => HotelDeal(
        wakanowId: json["WakanowId"],
        locationId: json["LocationId"],
        hotelName: json["HotelName"],
        urlCountry: json["UrlCountry"],
        urlCity: json["UrlCity"],
        urlHotelName: json["UrlHotelName"],
        city: json["City"],
        country: json["Country"],
        imageName: json["ImageName"],
        imageUrl: json["ImageUrl"],
        imageAlternativeUrl: json["ImageAlternativeUrl"],
        starRating: json["StarRating"],
        daysBeforeCheckIn: json["DaysBeforeCheckIn"],
        duration: json["Duration"],
        checkinDate: json["CheckinDate"],
        checkoutDate: json["CheckoutDate"],
        preferAlternativeSource: json["PreferAlternativeSource"],
        source: json["Source"],
        dynamicPrice: json["DynamicPrice"],
        dynamicAmount: json["DynamicAmount"],
        id: json["Id"],
        geography: json["Geography"],
        currency: json["Currency"],
        amount: json["Amount"]?.toDouble(),
        discountedAmount: json["DiscountedAmount"],
        priority: json["Priority"],
        active: json["Active"],
        mainView: json["MainView"],
        flightsView: json["FlightsView"],
        hotelsView: json["HotelsView"],
        pageIdentifier: json["PageIdentifier"],
        dealPromoText: json["DealPromoText"],
        dealsTitle: json["DealsTitle"],
        staticDynamicPriceList: json["StaticDynamicPriceList"],
        slashedPrice: json["SlashedPrice"],
      );

  Map<String, dynamic> toJson() => {
        "WakanowId": wakanowId,
        "LocationId": locationId,
        "HotelName": hotelName,
        "UrlCountry": urlCountry,
        "UrlCity": urlCity,
        "UrlHotelName": urlHotelName,
        "City": city,
        "Country": country,
        "ImageName": imageName,
        "ImageUrl": imageUrl,
        "ImageAlternativeUrl": imageAlternativeUrl,
        "StarRating": starRating,
        "DaysBeforeCheckIn": daysBeforeCheckIn,
        "Duration": duration,
        "CheckinDate": checkinDate,
        "CheckoutDate": checkoutDate,
        "PreferAlternativeSource": preferAlternativeSource,
        "Source": source,
        "DynamicPrice": dynamicPrice,
        "DynamicAmount": dynamicAmount,
        "Id": id,
        "Geography": geography,
        "Currency": currency,
        "Amount": amount,
        "DiscountedAmount": discountedAmount,
        "Priority": priority,
        "Active": active,
        "MainView": mainView,
        "FlightsView": flightsView,
        "HotelsView": hotelsView,
        "PageIdentifier": pageIdentifier,
        "DealPromoText": dealPromoText,
        "DealsTitle": dealsTitle,
        "StaticDynamicPriceList": staticDynamicPriceList,
        "SlashedPrice": slashedPrice,
      };
}

class HotelDestinationDeal {
  String numberOfHotels;
  String locationId;
  String country;
  String state;
  String city;
  String imageUrl;
  String imageAlternativeUrl;
  String imageName;
  String countryFlagImageName;
  String countryFlagImageUrl;
  String countryFlagImageAlternativeUrl;
  int daysBeforeCheckIn;
  int duration;
  String id;
  String geography;
  dynamic currency;
  int amount;
  int discountedAmount;
  String priority;
  bool active;
  bool mainView;
  bool flightsView;
  bool hotelsView;
  String pageIdentifier;
  String dealPromoText;
  String dealsTitle;
  dynamic staticDynamicPriceList;
  bool slashedPrice;

  HotelDestinationDeal({
    required this.numberOfHotels,
    required this.locationId,
    required this.country,
    required this.state,
    required this.city,
    required this.imageUrl,
    required this.imageAlternativeUrl,
    required this.imageName,
    required this.countryFlagImageName,
    required this.countryFlagImageUrl,
    required this.countryFlagImageAlternativeUrl,
    required this.daysBeforeCheckIn,
    required this.duration,
    required this.id,
    required this.geography,
    this.currency,
    required this.amount,
    required this.discountedAmount,
    required this.priority,
    required this.active,
    required this.mainView,
    required this.flightsView,
    required this.hotelsView,
    required this.pageIdentifier,
    required this.dealPromoText,
    required this.dealsTitle,
    this.staticDynamicPriceList,
    required this.slashedPrice,
  });

  factory HotelDestinationDeal.fromJson(Map<String, dynamic> json) =>
      HotelDestinationDeal(
        numberOfHotels: json["NumberOfHotels"],
        locationId: json["LocationId"],
        country: json["Country"],
        state: json["State"],
        city: json["City"],
        imageUrl: json["ImageUrl"],
        imageAlternativeUrl: json["ImageAlternativeUrl"],
        imageName: json["ImageName"],
        countryFlagImageName: json["CountryFlagImageName"],
        countryFlagImageUrl: json["CountryFlagImageUrl"],
        countryFlagImageAlternativeUrl: json["CountryFlagImageAlternativeUrl"],
        daysBeforeCheckIn: json["DaysBeforeCheckIn"],
        duration: json["Duration"],
        id: json["Id"],
        geography: json["Geography"],
        currency: json["Currency"],
        amount: json["Amount"],
        discountedAmount: json["DiscountedAmount"],
        priority: json["Priority"],
        active: json["Active"],
        mainView: json["MainView"],
        flightsView: json["FlightsView"],
        hotelsView: json["HotelsView"],
        pageIdentifier: json["PageIdentifier"],
        dealPromoText: json["DealPromoText"],
        dealsTitle: json["DealsTitle"],
        staticDynamicPriceList: json["StaticDynamicPriceList"],
        slashedPrice: json["SlashedPrice"],
      );

  Map<String, dynamic> toJson() => {
        "NumberOfHotels": numberOfHotels,
        "LocationId": locationId,
        "Country": country,
        "State": state,
        "City": city,
        "ImageUrl": imageUrl,
        "ImageAlternativeUrl": imageAlternativeUrl,
        "ImageName": imageName,
        "CountryFlagImageName": countryFlagImageName,
        "CountryFlagImageUrl": countryFlagImageUrl,
        "CountryFlagImageAlternativeUrl": countryFlagImageAlternativeUrl,
        "DaysBeforeCheckIn": daysBeforeCheckIn,
        "Duration": duration,
        "Id": id,
        "Geography": geography,
        "Currency": currency,
        "Amount": amount,
        "DiscountedAmount": discountedAmount,
        "Priority": priority,
        "Active": active,
        "MainView": mainView,
        "FlightsView": flightsView,
        "HotelsView": hotelsView,
        "PageIdentifier": pageIdentifier,
        "DealPromoText": dealPromoText,
        "DealsTitle": dealsTitle,
        "StaticDynamicPriceList": staticDynamicPriceList,
        "SlashedPrice": slashedPrice,
      };
}

class TopDestinationDeal {
  String cityName;
  String urlCityName;
  String country;
  String urlCountryName;
  String state;
  String imageName;
  String imageUrl;
  String imageAlternativeUrl;
  String fullUrl;
  String id;
  String geography;
  dynamic currency;
  int amount;
  int discountedAmount;
  String priority;
  bool active;
  bool mainView;
  bool flightsView;
  bool hotelsView;
  String pageIdentifier;
  String dealPromoText;
  String dealsTitle;
  dynamic staticDynamicPriceList;
  bool slashedPrice;

  TopDestinationDeal({
    required this.cityName,
    required this.urlCityName,
    required this.country,
    required this.urlCountryName,
    required this.state,
    required this.imageName,
    required this.imageUrl,
    required this.imageAlternativeUrl,
    required this.fullUrl,
    required this.id,
    required this.geography,
    this.currency,
    required this.amount,
    required this.discountedAmount,
    required this.priority,
    required this.active,
    required this.mainView,
    required this.flightsView,
    required this.hotelsView,
    required this.pageIdentifier,
    required this.dealPromoText,
    required this.dealsTitle,
    this.staticDynamicPriceList,
    required this.slashedPrice,
  });

  factory TopDestinationDeal.fromJson(Map<String, dynamic> json) =>
      TopDestinationDeal(
        cityName: json["CityName"],
        urlCityName: json["UrlCityName"],
        country: json["Country"],
        urlCountryName: json["UrlCountryName"],
        state: json["State"],
        imageName: json["ImageName"],
        imageUrl: json["ImageUrl"],
        imageAlternativeUrl: json["ImageAlternativeUrl"],
        fullUrl: json["FullUrl"],
        id: json["Id"],
        geography: json["Geography"],
        currency: json["Currency"],
        amount: json["Amount"],
        discountedAmount: json["DiscountedAmount"],
        priority: json["Priority"],
        active: json["Active"],
        mainView: json["MainView"],
        flightsView: json["FlightsView"],
        hotelsView: json["HotelsView"],
        pageIdentifier: json["PageIdentifier"],
        dealPromoText: json["DealPromoText"],
        dealsTitle: json["DealsTitle"],
        staticDynamicPriceList: json["StaticDynamicPriceList"],
        slashedPrice: json["SlashedPrice"],
      );

  Map<String, dynamic> toJson() => {
        "CityName": cityName,
        "UrlCityName": urlCityName,
        "Country": country,
        "UrlCountryName": urlCountryName,
        "State": state,
        "ImageName": imageName,
        "ImageUrl": imageUrl,
        "ImageAlternativeUrl": imageAlternativeUrl,
        "FullUrl": fullUrl,
        "Id": id,
        "Geography": geography,
        "Currency": currency,
        "Amount": amount,
        "DiscountedAmount": discountedAmount,
        "Priority": priority,
        "Active": active,
        "MainView": mainView,
        "FlightsView": flightsView,
        "HotelsView": hotelsView,
        "PageIdentifier": pageIdentifier,
        "DealPromoText": dealPromoText,
        "DealsTitle": dealsTitle,
        "StaticDynamicPriceList": staticDynamicPriceList,
        "SlashedPrice": slashedPrice,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
