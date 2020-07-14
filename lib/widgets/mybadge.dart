import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:amazoncloneapp/scrrens/cart.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/providers/cartprovider.dart';
class Mybadge extends StatefulWidget {
  @override
  _MybadgeState createState() => _MybadgeState();
}

class _MybadgeState extends State<Mybadge> {
  @override
  Widget build(BuildContext context) {
    final num=Provider.of<CartP>(context).mynum;
    return Container(
      padding: EdgeInsets.all(14),
      child: Badge(
        child: IconButton(icon: Icon(Icons.shopping_cart),onPressed: ()=>Navigator.of(context).pushNamed('/cs'),),
        padding: EdgeInsets.symmetric(vertical: 3,horizontal: 14),
        badgeContent: Text(num==null?'0':'${num}'),
      ),
    );
  }
}
