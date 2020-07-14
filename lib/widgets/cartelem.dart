import 'package:amazoncloneapp/providers/cartprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Cartelem extends StatefulWidget {
  final id;
  final name;
  int price;
  Cartelem(this.id,this.name,this.price){}

  @override
  _CartelemState createState() => _CartelemState();
}

class _CartelemState extends State<Cartelem> {
  var num=1;
  int myprice;
  @override
  void initState() {
    // TODO: implement initState
    myprice=widget.price;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    int g=myprice;


    return Container(
      child:Card(
        child: Column(
          children: [
            Row(
              children: [
                Text('${widget.name}'),
                Spacer(flex: 7,),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.remove),onPressed: ()=>setState(() {


                      if(num>0 && widget.price>0) {
                        num = num - 1;
                        widget.price=widget.price-g;


                      }
                       else if(num<0 || widget.price<0){
                        return;
                       }


                    }),),
                    Chip(avatar: CircleAvatar(child: Text('${num}'),),label: Text('Qty'),),
                    IconButton(icon: Icon(Icons.add),onPressed: ()=>setState(() {
                      num=num+  1;
                      widget.price=widget.price+g;






                    }),),
                  ],
                )

              ],
            ),
            Center(
              child:
              Text('${widget.price}'),
            ),
          ],
        ),
      )
    );
  }
}
