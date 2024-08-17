import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
class MyProvider extends ChangeNotifier{
 // List<Widget> myIcons = [const Icon(Icons.close), const Icon(Icons.circle_outlined)];
  List<Widget> myIcons = [const Icon(Icons.close, size: 40,), const Icon(Icons.circle_outlined, size: 40,)];
  List<int> myState = [0, 0,0,0,0,0,0,0,0,];
  List<int> myScore = [0, 0];
  bool univState = true;
  List<Widget> myChildren = [const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),
    const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),const SizedBox(height: 0, width: 0,),
  ];
  List<Color> myColors = [Colors.white, Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,];
  void reset(int i, int j, int k)
  {
    myColors[i] = Colors.white;
    myColors[j] = Colors.white;
    myColors[k] = Colors.white;
    for(int i = 0; i<9; i++)
      {
        myChildren[i] = const SizedBox(height: 0, width: 0);
        myState[i] = 0;
        univState = true;
      }
  }
void colourChange(int i, int j, int k)
{
  myColors[i] = Colors.greenAccent;
  myColors[j] = Colors.greenAccent;
  myColors[k] = Colors.greenAccent;
}
  void decider()
  async {
    if ((myChildren[0] == myIcons[0] && myChildren[1] == myIcons[0] &&
        myChildren[2] == myIcons[0]) ||
        (myChildren[0] == myIcons[1] && myChildren[1] == myIcons[1] &&
            myChildren[2] == myIcons[1])) {
      colourChange(0, 1, 2);
      if(univState)
        {
          myScore[1]++;
        }
      else{
        myScore[0]++;
      }
      await Future.delayed(const Duration(seconds: 1), () {
        reset(0, 1, 2);
        notifyListeners();
      });
    }
    else if ((myChildren[2] == myIcons[0] && myChildren[5] == myIcons[0] &&
        myChildren[8] == myIcons[0]) ||
        (myChildren[2] == myIcons[1] && myChildren[5] == myIcons[1] &&
            myChildren[8] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(2, 5, 8);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(2, 5, 8);
        notifyListeners();
      });
    }
    else if ((myChildren[2] == myIcons[0] && myChildren[4] == myIcons[0] &&
        myChildren[6] == myIcons[0]) ||
        (myChildren[2] == myIcons[1] && myChildren[4] == myIcons[1] &&
            myChildren[6] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(2, 4, 6);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(2, 4, 6);
        notifyListeners();
      });
    }
    else if ((myChildren[0] == myIcons[0] && myChildren[3] == myIcons[0] &&
        myChildren[6] == myIcons[0]) ||
        (myChildren[0] == myIcons[1] && myChildren[3] == myIcons[1] &&
            myChildren[6] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(0, 3, 6);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(0, 3, 6);
        notifyListeners();
      });
    }
    else if ((myChildren[7] == myIcons[0] && myChildren[8] == myIcons[0] &&
        myChildren[6] == myIcons[0]) ||
        (myChildren[7] == myIcons[1] && myChildren[8] == myIcons[1] &&
            myChildren[6] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(7, 8, 6);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(7, 8, 6);
        notifyListeners();
      });
    }
    else if ((myChildren[2] == myIcons[0] && myChildren[4] == myIcons[0] &&
        myChildren[6] == myIcons[0]) ||
        (myChildren[2] == myIcons[1] && myChildren[4] == myIcons[1] &&
            myChildren[6] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(2, 4, 6);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(2, 4, 6);
        notifyListeners();
      });
    }
    else if ((myChildren[1] == myIcons[0] && myChildren[4] == myIcons[0] &&
        myChildren[7] == myIcons[0]) ||
        (myChildren[1] == myIcons[1] && myChildren[4] == myIcons[1] &&
            myChildren[7] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(1, 4, 7);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(1, 4, 7);
        notifyListeners();
      });
    }
    else if ((myChildren[3] == myIcons[0] && myChildren[4] == myIcons[0] &&
        myChildren[5] == myIcons[0]) ||
        (myChildren[3] == myIcons[1] && myChildren[4] == myIcons[1] &&
            myChildren[5] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(3, 4, 5);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(3, 4, 5);
        notifyListeners();
      });
    }
    else if ((myChildren[0] == myIcons[0] && myChildren[4] == myIcons[0] &&
        myChildren[8] == myIcons[0]) ||
        (myChildren[0] == myIcons[1] && myChildren[4] == myIcons[1] &&
            myChildren[8] == myIcons[1])) {
      if(univState)
      {
        myScore[1]++;
      }
      else{
        myScore[0]++;
      }
      colourChange(0, 4, 8);
      await Future.delayed(const Duration(seconds: 1), () {
        reset(0, 4, 8);
        notifyListeners();
      });
    }
    else if(myState.contains(0) == false)
      {
        Future.delayed(const Duration(seconds: 1), (){reset(0, 0, 0);
        notifyListeners();});
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
    else if(myState[n] == 0)
      {
        myChildren[n] = const SizedBox(height: 0, width: 0);
        univState = true;
      }

  }
 @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}