import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  // print("Click");
                },
                color: Colors.green,
                splashColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: const Text("Click"),
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      side: const BorderSide(color: Colors.black),
                      shadowColor: Colors.green,
                      fixedSize:const Size(100, 10), //width,height
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.w100)),
                  onPressed: () {},
                  icon: const Icon(Icons.title),
                  label: const Text("Click")),
               GestureDetector(

                 onLongPress: (){
                   print("double");
                 },
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.indigoAccent,
                    child: const Text("CLICK"),
                  ),
                ),

            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
