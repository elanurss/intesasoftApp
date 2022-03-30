import 'package:case_02/core/extension/context_extension.dart';
import 'package:case_02/view/home/model/home_model.dart';
import 'package:flutter/material.dart';

class HomeViewDetail extends StatelessWidget {
  final Cities? data;
  const HomeViewDetail({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data!.name!),
        centerTitle: true,
      ),
      body: _detail(context),
    );
  }

  Container _detail(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(data!.image!),
              const SizedBox(
                height: 15,
              ),
              Text(data!.description!),
            ],
          ),
        ),
      ),
    );
  }
}
