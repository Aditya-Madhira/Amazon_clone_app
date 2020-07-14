import 'package:amazoncloneapp/providers/userdetailsprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/providers/userdetailsprovider.dart';

class UScreen extends StatefulWidget {
  @override
  _UScreenState createState() => _UScreenState();
}

class _UScreenState extends State<UScreen> {
  Future<void> fe(BuildContext context) async{
    await Provider.of<UdetProvider>(context, listen: false).fetch();

  }
  bool isload=true;
 @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
   Future.delayed(Duration.zero).then((_) {
     isload=true;
     Provider.of<UdetProvider>(context, listen: false).fetch().then((_){
       setState(() {
         isload=false;
       });
     } );
   });
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    final ulist = Provider.of<UdetProvider>(context).Userlist;

    var myh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: ()=>Navigator.of(context).pushNamed('/fs'),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: ()=>fe(context),
        child:   isload?CircularProgressIndicator():
        ulist.isEmpty
            ? SingleChildScrollView(
              child: Container(
          child: Text('nothing saved'),
        ),
            )
            : SingleChildScrollView(
              child: Container(
          height: 500,
          child: ListView.builder(
                itemCount: ulist.length, itemBuilder: (ctx, i) {
              return Card(child: Row(
                children: [
                  Text('${ulist[i].name}'),
                  IconButton(icon: Icon(Icons.edit),onPressed: ()=>Navigator.of(context).pushNamed('/fs',arguments: ulist[i].id),),
                  IconButton(icon: Icon(Icons.delete),onPressed: ()=>Provider.of<UdetProvider>(context,listen: false).delete(ulist[i].id),)
                ],
              ));
          }),
        ),
            )
      ),
    );
  }
}

