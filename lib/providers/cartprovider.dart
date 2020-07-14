import 'package:amazoncloneapp/data/itemdata.dart';
import 'package:flutter/material.dart';
import 'package:amazoncloneapp/providers/itemprovider.dart';
class CartP with ChangeNotifier{
  List<Itemdata> cartlist=[];
  List<Itemdata> get item{
    return [...cartlist];



  }
  int mynum;


void addtoc(List ins){
    var x=ins[0];
    cartlist.add(x);
    cartlist=cartlist.toSet().toList();
    int temp=cartlist.length;
    mynum=temp;
    notifyListeners();








}


}