import 'package:flutter/material.dart';

import 'seperate.dart';

class TempView4 extends StatefulWidget {
  const TempView4({Key? key}) : super(key: key);

  @override
  _TempView4State createState() => _TempView4State();
}

class _TempView4State extends State<TempView4> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEMP 4 - REBUILD',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FlexibleWidgetStuff(
          text: 'init',
          onEditingComplete: () => setState(() {}),
          textEditingController: _controller,
        ),
        SizedBox(height: 50.0),
        Container(
          color: Colors.green,
          child: Text(_controller.text),
        ),
      ]),
    );
  }
}
