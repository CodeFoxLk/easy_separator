# Easy Separator

A Flutter package for create columns and rows with separators

All the snippets are from the [example project](https://github.com/CodeFoxLk/easy_separator).

**Easy Separated Column**
----
<img src="https://user-images.githubusercontent.com/85751396/141652019-d8e2f36b-2080-4c4b-90fd-4f975eedcb29.png" alt="Separated Column" width="200"/>



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
----
<img src="https://user-images.githubusercontent.com/85751396/141652048-839271fd-4006-4605-bc09-a46ca0b273db.png" alt="Separated Row" width="200"/>



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
