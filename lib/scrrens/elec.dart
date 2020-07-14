import 'package:amazoncloneapp/providers/itemprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/widgets/scrollnotif.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/providers/cartprovider.dart';

class MYElec extends StatefulWidget {
  @override
  _MYElecState createState() => _MYElecState();
}

class _MYElecState extends State<MYElec> {
  @override
  Widget build(BuildContext context) {
    var myh = MediaQuery.of(context).size.height;
    final ilist = Provider.of<ItemProvider>(context).itemlist;
    final elist =
    ilist.where((element) => element.category == 'Electronics').toList();
    return Column(
      children: [
        Text(
          'ELECTRONICS',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: myh * 0.38,
          child: GridView.builder(
              itemCount: elist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0),
              itemBuilder: (ctx, i) {
                return InkWell(
                    onDoubleTap: (){

                      List instance=Provider.of<ItemProvider>(context,listen: false).findbyid('${elist[i].id}');
                      Provider.of<CartP>(context,listen: false).addtoc(instance);


                    },
                    child: GridTile(
                      child: Image.network('${elist[i].imageurl}'),
                      footer: GridTileBar(
                        backgroundColor: Colors.black.withOpacity(0.4),
                        title: Text('${elist[i].name}'),
                      ),
                    ));
              }),
        ),
        Scrollnotif(),
      ],
    );
  }
}

