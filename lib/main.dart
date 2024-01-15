import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: T(),
    );
  }
}
class T extends StatelessWidget {
  const T({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('news'),),
      body: OrientationBuilder(builder: (context, orientation) {
        if(orientation == Orientation.portrait){
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.green,
                child: Column(
                  children: [
                    Text('news titel'),
                    Container(
                      height: 300,
                      width: 200,
                      child: Image.network('https://i.pinimg.com/736x/3b/b8/40/3bb840e2d3b39bc93292948bddd2526d.jpg'),
                    ),
                    Text('news descrption \n hfk kfhgdfhk hfkjg kjrghk dhgfkh '),

                  ],
                ),
              );
            },

          );
        }
        else{
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.green,
                child: Column(
                  children: [
                    Text('news titel'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: 200,
                        child: Image.network('https://i.pinimg.com/736x/3b/b8/40/3bb840e2d3b39bc93292948bddd2526d.jpg'),
                      ),
                    ),
                    Text('news descrption \n hfk kfhgdfhk hfkjg kjrghk dhgfkh '),

                  ],
                ),
              );
            },

          );;

        }


      },

      ),
    );
  }
}

