import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier{
  int _counter=0;
  int get_counter()=>_counter;

  void increment(){
    _counter++;
    notifyListeners();
  }

  void decrement(){
    if(_counter>0){
      _counter--;
    }
    notifyListeners();
  }

  void reset(){
      _counter=0;
    notifyListeners();
  }
}