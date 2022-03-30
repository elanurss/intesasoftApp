// ignore_for_file: constant_identifier_names
enum NetworkRoute { CITIES }

extension NetworkRouteExtension on NetworkRoute {
  String get rawValue {
    switch (this) {
      case NetworkRoute.CITIES:
        return 'https://61d6901a35f71e0017c2e6c9.mockapi.io/api/v1/cities';
      default:
        throw Exception('error');
    }
  }
}
