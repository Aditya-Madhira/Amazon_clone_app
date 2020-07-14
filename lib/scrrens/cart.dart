import 'package:amazoncloneapp/providers/cartprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/widgets/cartelem.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final clist=Provider.of<CartP>(context).cartlist;
    var h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: h,
        child: Column(
          children: [
            Container(
              height: h * 0.6,
              child: ListView.builder(itemCount: clist.length,itemBuilder: (ctx,i){
                return Cartelem(clist[i].id,clist[i].name,clist[i].price);

              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                FloatingActionButton(child: Text('order'),onPressed: null),
              ],
            )
          ],
        ),

      ),
    );
  }
}
