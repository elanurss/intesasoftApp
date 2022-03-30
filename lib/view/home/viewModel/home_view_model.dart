import 'package:case_02/core/base/view/base_view_model.dart';
import 'package:case_02/view/home/model/home_model.dart';
import 'package:case_02/view/home/service/home_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  HomeService? service;
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    service = HomeService();
    fetchData();
  }

  @observable
  List<Cities> cities = [];

  @observable
  bool loading = false;

  @action
  void isLoading() => loading = !loading;

  Future<void> fetchData() async {
    isLoading();
    final response = await service!.fetchCities();

    if (response != null) {
      cities = response;
    }

    isLoading();
  }
}
