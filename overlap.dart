import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'temp6_viewmodel.dart';

class TempView6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Temp6ViewModel>.reactive(
      viewModelBuilder: () => Temp6ViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Flutter Intro'),
        ),
        body: Stack(clipBehavior: Clip.none, children: [
          Container(
            color: Colors.blue,
            child: Row(
              children: [SizedBox(height: 100)],
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: Row(
                  children: [SizedBox(height: 50)],
                ),
              ),
            ),
            right: 0,
            left: 0,
            bottom: -25,
          )
        ]),
      ),
    );
  }
}
