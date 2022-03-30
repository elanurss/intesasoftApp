import 'package:case_02/core/base/view/base_view.dart';
import 'package:case_02/core/extension/context_extension.dart';
import 'package:case_02/core/init/navigation/NavigationService.dart';
import 'package:case_02/view/home/model/home_model.dart';
import 'package:case_02/view/home/viewModel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, HomeViewModel model) =>
            _scaffold(model, context));
  }

  Scaffold _scaffold(HomeViewModel viewModel, BuildContext context) => Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        appBar: _appBar(),
        body: _listView(viewModel, context),
      );

  Widget _listView(HomeViewModel viewModel, BuildContext context) {
    return Observer(builder: (_) {
      return viewModel.loading
          ? _circleProgress()
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: context.theme.colorScheme.background,
                child: ListView.builder(
                    itemCount: viewModel.cities.length,
                    itemBuilder: (context, index) {
                      return buildListText(viewModel.cities[index], context);
                    }),
              ),
            );
    });
  }

  Center _circleProgress() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget buildListText(Cities data, BuildContext context) => Container(
        padding: context.paddingLow,
        margin: context.paddingLow,
        color: context.theme.colorScheme.onPrimary,
        child: GestureDetector(
          onTap: () {
            NavigationService.instance
                .navigateToPage(path: '/detail', data: data);
          },
          child: Text(data.name ?? ''),
        ),
      );

  Center _dataText() {
    return const Center(
      child: Text('Veri çekilemedi!'),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('İntesasoft'),
      elevation: 0,
      leading: const Icon(Icons.menu),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        ),
      ],
    );
  }
}
