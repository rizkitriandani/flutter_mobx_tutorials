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
     debugShowCheckedModeBanner: false,
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
           Observer(builder: (context) => Text(
             dzikirCounter.dzikirCount.toString(), style: TextStyle(fontSize: 80),
             key: Key("textCounter"),
           )),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               FloatingActionButton(
                 key: Key("decreaseCounter"),
                 onPressed: (){
                 //add action
                 dzikirCounter.decreaseDzikirCount();
               }, child:Icon(Icons.minimize),),
               SizedBox(width:20),
               FloatingActionButton(
                 key:Key("increaseCounter"),
                 onPressed: (){
                 //add action
                 dzikirCounter.increaseDzikirCount();
               }, child:Icon(Icons.add),),
             ],
           ),

           SizedBox(height: 20,),

           FlatButton(
             key:Key("resetCounter"),
             height: 40,
             minWidth: 40,
             onPressed: () {
             dzikirCounter.resetDzikirCount();
           }, child: Text("Reset Counter", style: TextStyle(color: Colors.white),),
           color: Colors.blue,
           )

         ],
       ),
     ),
   );
  }
}

