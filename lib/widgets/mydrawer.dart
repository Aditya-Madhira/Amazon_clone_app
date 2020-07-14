import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Card(
          elevation: 200,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.white],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),

                  child: DrawerHeader(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'AMAZON',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 56),
                    ),
                  )),
              Divider(
                thickness: 3,
                color: Colors.black,
              ),
              SizedBox(
                height: 1,
              ),
              Card(
                  elevation: 2,
                  child: Ink(
                      color: Colors.green,
                      child: ListTile(
                        title: Text('Categories'),
                        leading: Icon(Icons.category),
                        onTap: () => null,
                      ))),
              Card(
                  elevation: 2,
                  child: Ink(
                      color: Colors.yellow.withOpacity(0.82),
                      child: ListTile(
                        title: Text('Enter Your Details'),
                        leading: Icon(Icons.details),
                        onTap: (){
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed('/us');

                        },
                      ))),
              Divider(thickness: 3,color: Colors.black,),
              Card(
                  elevation: 2,
                  child: Ink(
                      color: Colors.blue,
                      child: ListTile(
                        title: Text('Log out'),
                        leading: Icon(Icons.exit_to_app),
                        onTap: () => null,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
