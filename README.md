# Easy Separator Example

A Flutter package for create columns and rows with separators

All the snippets are from the [example project](https://github.com/CodeFoxLk/easy_separator).

**Easy Separated Column**
![Separated Column](https://user-images.githubusercontent.com/85751396/141652019-d8e2f36b-2080-4c4b-90fd-4f975eedcb29.png=250x)



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
![Separated Row](https://user-images.githubusercontent.com/85751396/141652048-839271fd-4006-4605-bc09-a46ca0b273db.png=250x)


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
