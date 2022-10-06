import 'package:flutter/material.dart';
import 'package:silver_shrink/screens/scroller.dart';
import 'package:silver_shrink/screens/task02.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scroller(),
    );
  }
}

//
// Column(
// children: [
// Expanded(
// child: ListView(
// physics: BouncingScrollPhysics(),
// shrinkWrap: true,
// children: [
// SizedBox(
// height: MediaQuery.of(context).size.width / 3,
// child: Row(
// children: [
// Text("CATEGORY"),
// Expanded(
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 200,
// itemBuilder: (BuildContext c, index) {
// return Container(
// height: 100,
// color: Colors.blueAccent,
// child: Text("Text"),
// );
// }),
// )
// ],
// ),
// ),
// ...List.generate(
// 100,
// (index) => Text("HELLO"),
// ),
// ListView.builder(
// physics: ClampingScrollPhysics(),
// shrinkWrap: true,
// itemCount: 100,
// itemBuilder: (BuildContext context, index) {
// return Container(
// height: 50,
// color: Colors.red.shade400,
// child: const Center(child: Text('Entry B')),
// );
// })
// ],
// ))
// ],
// ),
