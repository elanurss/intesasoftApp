import 'package:case_02/core/init/navigation/NavigationService.dart';
import 'package:flutter/material.dart';

abstract class BaseViewModel {
  BuildContext? context;

  NavigationService navigationService = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
