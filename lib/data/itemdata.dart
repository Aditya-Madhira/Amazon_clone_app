class Itemdata{
  final id;
  final category;
  final name;
  final imageurl;
  int price;
  final bool isinstock;
  final description;
  List reviews=[];
  final stock;

  Itemdata(this.id,this.category,this.name,this.imageurl,this.price,this.isinstock,this.description,this.reviews,this.stock){}
}