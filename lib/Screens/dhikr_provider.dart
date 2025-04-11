import 'package:counter_tasibh/Screens/dhikr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DhikrProvider extends ChangeNotifier{
 List<Dhikr> _dhikr=[];
 List<Dhikr> getDhikr()=> _dhikr;

 void addDhikr(Dhikr dhikr){
   _dhikr.add(dhikr);
   notifyListeners();
 }

 void delete(int index){
   _dhikr.removeAt(index);
   notifyListeners();
 }

 void update(int index , Dhikr dhikr){
   _dhikr[index] =dhikr;
   notifyListeners();
 }

}