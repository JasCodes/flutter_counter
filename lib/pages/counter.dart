import 'package:flutter_counter/widgets/styles/heading1.dart';
import 'package:flutter/material.dart';
import 'package:ext/ext.dart';

class Counter extends StatelessWidget {
  Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = 0.obs;
    final appBar = AppBar(
      title: Text('Counter'),
    );
    final floatingActionButton = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            count++;
          },
        ),
        SizedBox(width: 8),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            count--;
          },
        ),
      ],
    );
    final body = Obx(() {
      return Center(
        child: Heading1('$count'),
      );
    });
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      body: body,
    );
  }
}
