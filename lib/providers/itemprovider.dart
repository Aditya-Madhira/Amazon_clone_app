import 'package:flutter/material.dart';
import 'package:amazoncloneapp/data/itemdata.dart';
import 'package:provider/provider.dart';
import 'package:amazoncloneapp/providers/cartprovider.dart';


class ItemProvider with ChangeNotifier {
  List<Itemdata> itemlist = [
    Itemdata(
        'p1',
        'Electronics',
        'Casio men watch',
        'https://m.media-amazon.com/images/I/61At+Gn7oDL._AC_UL480_FMwebp_QL65_.jpg' ,
        500,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20',),
    Itemdata(
        'p2',
        'Electronics',
        'ps4 bundle with GOD OF WAR',
        'https://e7.pngegg.com/pngimages/424/981/png-clipart-god-of-war-iii-sony-playstation-4-pro-god-of-war-ps4-playstation-4-video-game.png',
        27000,
        true,
        'Sony\'s new ps4 with god of war game',
        ['The ps4 is here!!!', 'package delivery not good'],
        '3'),
    Itemdata(
        'p3',
        'Men Fashion',
        'U.s polo T shirt',
        'https://m.media-amazon.com/images/I/81JfxwJxYqL._AC_UL480_FMwebp_QL65_.jpg',
        1999,
        true,
        'Soft Fabric,US polo t-shirt,available in all sizes',
        ['bad material', 'Washable and good'],
        '100'),
    Itemdata(
        'p4',
        'Home',
        'Zen Yoga mat',
        'https://m.media-amazon.com/images/I/61d049-EBiL._AC_UL480_FMwebp_QL65_.jpg',
        3999,
        true,
        'Do your yoga on this soft mat',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p5',
        'Car',
        'Car washer',
        'https://m.media-amazon.com/images/I/717wYrO+b0L._AC_UL480_FMwebp_QL65_.jpg',
        6999,
        true,
        'High powered Water Jet car washer',
        ['Jet Speed is really slow', 'Bad Product'],
        '10'),
    Itemdata(
        'p6',
        ' Women Fashion',
        'Long sleeved hoodie',
        'https://m.media-amazon.com/images/I/61tHXpTYj3L._AC_UL480_FMwebp_QL65_.jpg',
        799,
        true,
        'Comfy,perfect fit hoodie',
        ['The fit is perfect', 'Nice Colors'],
        '3'),
    Itemdata(
        'p7',
        'Women fashion',
        'Juvenile t-shirt',
        'https://m.media-amazon.com/images/I/41fOibcUoVL._AC_UL480_FMwebp_QL65_.jpg',
        499,
        true,
        'Really good shirt',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p8',
        'Sports',
        'Lycan stunner Cricket bat',
        'https://m.media-amazon.com/images/I/61u+9ciYQzL._AC_UL480_FMwebp_QL65_.jpg',
        3999,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p9',
        'Men Fashion',
        'Wildhorn wallet',
        'https://m.media-amazon.com/images/I/71dEMEiYC5L._AC_UL480_FMwebp_QL65_.jpg',
        899,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p10',
        'Baby/kids',
        'Baby scooter',
        'https://m.media-amazon.com/images/I/41ohVePwPrL._AC_UL480_FMwebp_QL65_.jpg',
        299,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p11',
        'Men Fashion',
        'Swim shorts',
        'https://m.media-amazon.com/images/I/81O7dRJ-0qL._AC_UL480_FMwebp_QL65_.jpg',
        2999,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p12',
        'Men Fashion',
        'Beardo Hair wax',
        'https://m.media-amazon.com/images/I/41QVvjUpXnL._AC_UL480_FMwebp_QL65_.jpg',
        499,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p13',
        'Electronics',
        'God Of War ps4',
        'https://m.media-amazon.com/images/I/81YBJ4RWDOL._AC_UL480_FMwebp_QL65_.jpg',
        3999,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p14',
        'Electronics',
        'Apple I phone 11',
        'https://m.media-amazon.com/images/I/51kGDXeFZKL._AC_UY327_FMwebp_QL65_.jpg',
        79999,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p15',
        'books',
        'The power of subconsciousness',
        'https://m.media-amazon.com/images/I/9138VXjBfPL._AC_UY327_FMwebp_QL65_.jpg',
        199,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p16',
        'Electronics',
        'Mi Tv',
        'https://m.media-amazon.com/images/I/71sBGR6LZhL._AC_UY327_FMwebp_QL65_.jpg',
        1499,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p17',
        'Men Fashion',
        'Firebird UV sunglasses',
        'https://m.media-amazon.com/images/I/51kp8aEzghL._AC_UL480_FMwebp_QL65_.jpg',
        850,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p18',
        'Women fashion',
        'Sparx women Sneakers',
        'https://m.media-amazon.com/images/I/81V+MalWsSL._AC_UL480_FMwebp_QL65_.jpg',
        1299,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p19',
        'Electronics',
        'Mi Powerbank',
        'https://images-eu.ssl-images-amazon.com/images/I/31RChRoWtIL._AC_US240_FMwebp_QL65_.jpg' '',
        2899,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),
    Itemdata(
        'p20',
        'Electronics',
        'Haier Refrigerator',
        'https://m.media-amazon.com/images/I/61DWru8Y9NL._AC_UY327_FMwebp_QL65_.jpg',
        12999,
        true,
        'sleek watch',
        ['awesome', 'really good design'],
        '20'),


  ];


  List<Itemdata> get item {
    return [...itemlist];
  }




    findbyid(var id) {
   return  itemlist.where((element) => element.id==id).toList();





  }








}


  
  
  
  
