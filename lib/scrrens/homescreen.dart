import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:amazoncloneapp/providers/itemprovider.dart';
import 'package:amazoncloneapp/scrrens/elec.dart';
import 'package:amazoncloneapp/scrrens/menf.dart';
import 'package:amazoncloneapp/scrrens/home.dart';
import 'package:amazoncloneapp/widgets/mydrawer.dart';
import 'dart:math';
import 'package:amazoncloneapp/data/itemdata.dart';
import 'package:amazoncloneapp/widgets/mybadge.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List homelist=['Electronics','Men\s Fashion','Home'];


  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  PageController _secondcontroller = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero).then((_) {


      Timer.periodic(Duration(seconds: 4), (Timer timer) {
        if (_currentPage < 5) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
      );
    }
    );
    super.initState();
  }






  @override
  Widget build(BuildContext context) {

    final myitemlist=Provider.of<ItemProvider>(context).itemlist;

    List <Itemdata>slist=[ Itemdata(
        'p5',
        'Car',
        'Car washer',
        'https://m.media-amazon.com/images/I/717wYrO+b0L._AC_UL480_FMwebp_QL65_.jpg',
        500,
        true,
        'High powered Water Jet car washer',
        ['Jet Speed is really slow', 'Bad Product'],
        '10'),Itemdata(
        'p1',
        'Electronics',
        'Casio men watch',
        'https://m.media-amazon.com/images/I/61At+Gn7oDL._AC_UL480_FMwebp_QL65_.jpg' ,
        500,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
      Itemdata(
          'p3',
          'Men Fashion',
          'U.s polo T shirt',
          'https://m.media-amazon.com/images/I/81JfxwJxYqL._AC_UL480_FMwebp_QL65_.jpg',
          1999,
          true,
          'Soft Fabric,US polo t-shirt,available in all sizes',
          ['bad material', 'Washable and good'],
          '100'), Itemdata(
          'p15',
          'books',
          'The power of subconsciousness',
          'https://m.media-amazon.com/images/I/9138VXjBfPL._AC_UY327_FMwebp_QL65_.jpg',
          500,
          true,
          'sleek watch',
          ['awesome', 'really good design'],
          '20'),  Itemdata(
          'p18',
          'Women fashion',
          'Sparx women Sneakers',
          'https://m.media-amazon.com/images/I/81V+MalWsSL._AC_UL480_FMwebp_QL65_.jpg',
          500,
          true,
          'sleek watch',
          ['awesome', 'really good design'],
          '20'),];




    var myh = MediaQuery.of(context).size.height;
    var myw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title:Text('AMAZON_CLONE',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),centerTitle: true,actions: <Widget>[
        Mybadge(),

      ],),
      drawer: MyDrawer(),

      body:

         Container(
          height: myh,
          child: Column(
            children: [
              Container(
                height: myh * 0.3,
                child: InkWell(
                    child: PageView.builder(itemCount: slist.length,controller: _pageController,scrollDirection: Axis.horizontal,itemBuilder: (ctx,i){
                      return GridTile(
                        child: Image.network('${slist[i].imageurl}'),
                        footer: GridTileBar(title: Text('${slist[i].name}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),backgroundColor: Colors.black,),
                      );

                    })
                ),
              ),
              Container(

                height: myh * 0.58,
                width: double.infinity,
                child: InkWell(

                  child: Scrollbar(

                    child: PageView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,



                      controller: _secondcontroller,
                      children: [
                       MYElec(),
                        MYMenf(),
                        MYHome(),



                      ],

                    ),
                  )

                ),
              )
            ],
          ),
        ),
      );
  }
}
