import 'package:amazoncloneapp/providers/userdetailsprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/data/userdata.dart';

class TheForm extends StatefulWidget {
  @override
  _TheFormState createState() => _TheFormState();
}

class _TheFormState extends State<TheForm> {
  var _tempobj = Udata(id:null,name: null, cred: null);
  var initvalues={
    'id':null,

    'name':'',
    'cred':'',
  };

  final formkey = GlobalKey<FormState>();
  var isInit=true;


  void save() {
    formkey.currentState.save();
    if(_tempobj.id!=null){

      Provider.of<UdetProvider>(context, listen: false).update(_tempobj.id, _tempobj);


    }
    if(_tempobj.id==null){
      Provider.of<UdetProvider>(context, listen: false).submit(_tempobj.name, _tempobj.cred);

    }


  }

  @override
  void didChangeDependencies() {
    if(isInit){
      final id=ModalRoute.of(context).settings.arguments as String;
      if(id!=null)
      {
        _tempobj=Provider.of<UdetProvider>(context,listen: false).findbyid(id);
        initvalues=
        {
          'id':_tempobj.id,
          'name':_tempobj.name,
          'cred':_tempobj.cred,
        };
      }

    }
    isInit=false;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var myh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: myh,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                initialValue: initvalues['name'],
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (value) {
                  _tempobj = Udata(id:initvalues['id']==null?_tempobj.id:initvalues['id'],name: value, cred: _tempobj.cred);
                },
              ),
              TextFormField(
                initialValue: initvalues['cred'],
                decoration: InputDecoration(labelText: 'Creditinfo'),
                onSaved: (value) {
                  _tempobj = Udata(id:initvalues['id']==null?_tempobj.id:initvalues['id']   ,name: _tempobj.name, cred: value);
                },
              ),
              FlatButton(child: Text('submit'), onPressed: (){
                save();
                Navigator.of(context).pop();

              }),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

