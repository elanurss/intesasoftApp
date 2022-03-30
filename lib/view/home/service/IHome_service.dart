import 'package:case_02/view/home/model/home_model.dart';

abstract class IHomeService {
  Future<List<Cities>?> fetchCities();
}
