import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'package:provider/provider.dart';
import 'package:tictactoe/myprovider.dart';
class MyGameScreen extends StatefulWidget {
  const MyGameScreen({super.key});

  @override
  State<MyGameScreen> createState() => _MyGameScreenState();
}

class _MyGameScreenState extends State<MyGameScreen> {
  List<Widget> myIcons = [const Icon(Icons.close, size: 40,), const Icon(Icons.circle_outlined, size: 40,)];
  List<int> myState = [0, 0,0,0,0,0,0,0,0,];
   bool univState = true;
  List<Widget> myChildren = [const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),
    const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),
  ];
  List<Color> myColors = [Colors.white, Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,];
  void decider()
  {
    if((myChildren[0] == myIcons[0] && myChildren[1] == myIcons[0] && myChildren[2] == myIcons[0]) ||
        (myChildren[0] == myIcons[1] && myChildren[1] == myIcons[1] && myChildren[2] == myIcons[1]))
      {

      }
  }
  void myChild (int n){
    if(myState[n] == 1)
    {
      if(univState){
        myChildren[n] = myIcons[0];
        univState = false;
      }
      else{
        myChildren[n] = myIcons[1];
        univState = true;
      }
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('Tic Tac Toe'),backgroundColor: Colors.blue,),
      body: Center(child: Consumer<MyProvider>(
        builder: (BuildContext context, value, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    value.myState[0]++;
                    value.myChild(0);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                    child: Card(child: value.myChildren[0], color: value.myColors[0],),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[1]++;
                    value.myChild(1);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[1], color: value.myColors[1],)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[2]++;
                    value.myChild(2);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child: Card(child: value.myChildren[2], color: value.myColors[2],)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[3]++;
                    value.myChild(3);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[3], color: value.myColors[3],),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[4]++;
                    value.myChild(4);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[4], color: value.myColors[4],),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[5]++;
                    value.myChild(5);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[5], color: value.myColors[5],),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[6]++;
                    value.myChild(6);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[6], color: value.myColors[6],),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[7]++;
                    value.myChild(7);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[7], color: value.myColors[7],),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    value.myState[8]++;
                    value.myChild(8);
                    value.decider();
                    value.notifyListeners();
                  },
                  child: Container(
                      child:Card(child: value.myChildren[8], color: value.myColors[8],),
                  ),
                ),
              ),
            ], shrinkWrap: true, ),
            const SizedBox(
              height: 0,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(child: Card(child: Icon(Icons.close, size: 35,), color: Colors.white,), height: 70, width: 70, ),
                    const SizedBox(width:  10,),
                     Text(
                          "${value.myScore[0]}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                  ],
                ),
                Transform.translate(offset: const Offset(0, -16),
                  child: SizedBox(height: 63, width: 63,
                    child: ElevatedButton(onPressed: (){value.reset(0, 0, 0); value.notifyListeners(); value.myScore[0] = 0; value.myScore[1] = 0;}, child: const Icon(Icons.refresh_sharp, color: Colors.black, size: 30,), style:  ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    padding: const MaterialStatePropertyAll(EdgeInsets.zero), backgroundColor: MaterialStatePropertyAll(Colors.white),
                    ),),
                  ),
                ),
                Column(
                  children: [
                    Container(child: Card(child: Icon(Icons.circle_outlined, size: 35,) ,color: Colors.white,), height: 70, width: 70,),
                    const SizedBox(width:  10,),
                     Text('${value.myScore[1]}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                  ],
                ),
              ],
            ),
          ],
        );},
      ),
      ),);
  }
}
