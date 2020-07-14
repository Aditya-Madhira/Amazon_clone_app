import 'package:amazoncloneapp/providers/authprovider.dart';
import 'package:flutter/material.dart';
import 'package:amazoncloneapp/scrrens/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/providers/itemprovider.dart';
import 'package:amazoncloneapp/scrrens/UserDetails.dart';
import 'package:amazoncloneapp/providers/userdetailsprovider.dart';
import 'package:amazoncloneapp/scrrens/cart.dart';
import 'package:amazoncloneapp/providers/cartprovider.dart';
import 'package:amazoncloneapp/scrrens/edit_or_add.dart';

void main()=>runApp(MyAmazon());

class MyAmazon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider.value(value: AuthP()),

        ChangeNotifierProvider.value(value: ItemProvider()),
        ChangeNotifierProvider.value(value: UdetProvider()),
        ChangeNotifierProvider.value(value: CartP()),



      ],
      child: MaterialApp(
        routes: {
          '/us':(context)=>UScreen(),
          '/cs':(context)=>Cart(),
          '/fs':(context)=>TheForm(),

        },


        home: HomeScreen()

      ),
    );
  }
}
