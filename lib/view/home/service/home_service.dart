import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../product/enum/network_route.dart';
import '../model/home_model.dart';
import 'IHome_service.dart';

class HomeService extends IHomeService {
  @override
  Future<List<Cities>?> fetchCities() async {
    var response = await http.get(Uri.parse(NetworkRoute.CITIES.rawValue));
    if (response.statusCode == 200) {
      return citiesFromJson(utf8.decode(response.bodyBytes));
    }
  }
}
