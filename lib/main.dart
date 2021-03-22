import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: MainPage(),
   );
  }

}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Dzikir Counter"),),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("0", style: TextStyle(fontSize: 80),),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               FloatingActionButton(onPressed: (){}, child:Icon(Icons.minimize),),
               SizedBox(width:20),
               FloatingActionButton(onPressed: (){}, child:Icon(Icons.add),),
             ],
           ),

         ],
       ),
     ),
   );
  }
}

