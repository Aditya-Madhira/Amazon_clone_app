class HTTPExcep implements Exception{
  final String myString;
  HTTPExcep(this.myString);

  String toString(){
    return myString;
  }
}