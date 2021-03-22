import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_tutorials/stores/dzikir_counter.dart';

final DzikirCounterStores dzikirCounter = DzikirCounterStores();

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
           Observer(builder: (context) => Text(dzikirCounter.dzikirCount.toString(), style: TextStyle(fontSize: 80),)),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               FloatingActionButton(onPressed: (){
                 //add action
                 dzikirCounter.decreaseDzikirCount();
               }, child:Icon(Icons.minimize),),
               SizedBox(width:20),
               FloatingActionButton(onPressed: (){
                 //add action
                 dzikirCounter.increaseDzikirCount();
               }, child:Icon(Icons.add),),
             ],
           ),

         ],
       ),
     ),
   );
  }
}

