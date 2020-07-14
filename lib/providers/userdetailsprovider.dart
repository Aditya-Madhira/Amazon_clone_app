import 'package:flutter/material.dart';
import 'package:amazoncloneapp/data/userdata.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UdetProvider with ChangeNotifier {
  List<Udata> Userlist = [];

  List<Udata> get item {
    return [...Userlist];
  }

  Future<void> fetch() async{
    try{ const url='https://clone-73d0d.firebaseio.com/userdata.json';
    final getresp=await http.get(url);

    final extracted=json.decode(getresp.body) as Map<String,dynamic>;
    if(extracted!=null){
      List<Udata> temp=[];
      extracted.forEach((pid, pdata) {
        temp.add(Udata(
          id:pid,
          name:pdata['name'],
          cred:pdata['cred'],


        ));


      });
      Userlist=temp;
    }
    else{return ;}


    notifyListeners();}
    catch(e){
      return;
    }


  }

  Future<void> submit(var name,var creditinfo) async{
    const url='https://clone-73d0d.firebaseio.com/userdata.json';
    await http.post(url,body: json.encode({
      'name':name,
      'cred':creditinfo,


    }));

  }

  Future<void> update(var id,Udata newp) async{
    final index=Userlist.indexWhere((element) => element.id==id);
    if(index>=0){
      final url='https://clone-73d0d.firebaseio.com/userdata/$id.json';
      await http.patch(url,body: json.encode({
        'name':newp.name,
        'cred':newp.cred,

      }));
      notifyListeners();

    }


  }
  Udata findbyid(var id){
    return Userlist.firstWhere((element) => element.id==id);

  }
  void delete(var id)async
  {
    final url='https://clone-73d0d.firebaseio.com/userdata/$id.json';
    await http.delete(url);
    final index=Userlist.indexWhere((element) => element.id==id);
    Userlist.removeAt(index);
    notifyListeners();

  }


}