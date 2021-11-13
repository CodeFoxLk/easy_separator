# Easy Separator Example

A Flutter package for create columns and rows with separators

All the snippets are from the [example project](https://github.com/CodeFoxLk/easy_separator).

**Easy Separated Column**

    EasySeparatedColumn(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            separatorBuilder: (BuildContext context, int index) {
              return const Text('<Easy Separator>',);
            },
            children: [
              Container(height: 20, color: Colors.purple),
              Container(height: 20, color: Colors.lightBlue),
              Container(height: 20, color: Colors.green),
              Container(height: 20, color: Colors.yellow),
              Container(height: 20, color: Colors.orange),
              Container(height: 20, color: Colors.red),
            ],
          )

**Easy Separated Row**

    EasySeparatedRow(
                  separatorBuilder: (BuildContext context, int index) {
                    return const RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          '<Easy Separator>',
                        ));
                  },
                  children: [
                    Container(width: 20, color: Colors.purple),
                    Container(width: 20, color: Colors.lightBlue),
                    Container(width: 20, color: Colors.green),
                    Container(width: 20, color: Colors.yellow),
                    Container(width: 20, color: Colors.orange),
                    Container(width: 20, color: Colors.red),
                  ],
                )