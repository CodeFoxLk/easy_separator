import 'package:easy_separator/easy_separator.dart';
import 'package:flutter/material.dart';

class EasySeparatedRowExample extends StatelessWidget {
  const EasySeparatedRowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Separated Row'),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: EasySeparatedRow(
              separatorBuilder: (BuildContext context, int index) {
                return RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          '<Easy Separator>',
                        )));
              },
              children: [
                Container(width: 20, color: Colors.purple),
                Container(width: 20, color: Colors.lightBlue),
                Container(width: 20, color: Colors.green),
                Container(width: 20, color: Colors.yellow),
                Container(width: 20, color: Colors.orange),
                Container(width: 20, color: Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
