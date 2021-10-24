import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
int counter = 0;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Statful'),),
        body: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  setState(() {
                    counter = counter + 1 ;
                  });

                },
                child: Container(
child: Text(' $counter',
style: TextStyle(
  fontSize: 50.0,
),
),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
setState(() {
  counter ++ ;
});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
