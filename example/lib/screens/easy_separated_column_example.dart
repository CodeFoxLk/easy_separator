import 'package:easy_separator/easy_separator.dart';
import 'package:flutter/material.dart';

class EasySeparatedColumnExample extends StatelessWidget {
  const EasySeparatedColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Separated Column'),
      ),
      body: EasySeparatedColumn(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                '<Easy Separator>',
              ));
        },
        children: [
          Container(height: 20, color: Colors.purple),
          Container(height: 20, color: Colors.lightBlue),
          Container(height: 20, color: Colors.green),
          Container(height: 20, color: Colors.yellow),
          Container(height: 20, color: Colors.orange),
          Container(height: 20, color: Colors.red),
        ],
      ),
    );
  }
}
