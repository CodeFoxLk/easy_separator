import 'package:easy_separator/easy_separator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'easy_separated_column_example.dart';
import 'easy_separated_row_example.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Separator'),
      ),
      body: EasySeparatedColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EasySeparatedColumnExample()),
                );
              },
              child: const Text('Easy Separated Column')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EasySeparatedRowExample()),
                );
              },
              child: const Text('Easy Separated Row'))
        ],
      ),
    );
  }
}
