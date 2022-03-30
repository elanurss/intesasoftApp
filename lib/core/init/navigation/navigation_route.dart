import 'package:case_02/core/constants/navigation/navigation_constants.dart';
import 'package:case_02/view/home/model/home_model.dart';
import 'package:case_02/view/home/view/home_view.dart';
import 'package:case_02/view/home/view/home_view_detail.dart';
import 'package:flutter/material.dart';

class NaigationRoute {
  static final NaigationRoute _instance = NaigationRoute._init();
  static NaigationRoute get instance => _instance;
  NaigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.HOME:
        return normalNavigate(const HomeView(), NavigationConstants.HOME);
      case NavigationConstants.DETAIL:
        if (args.arguments is Cities) {
          return normalNavigate(
              HomeViewDetail(
                data: args.arguments as Cities,
              ),
              NavigationConstants.DETAIL);
        }
        throw Error();

      default:
        return MaterialPageRoute(builder: (context) => const NotFoundWidget());
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget, settings: RouteSettings(name: pageName));
  }
}

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Sayfa bulunamadı!!'),
      ),
    );
  }
}
