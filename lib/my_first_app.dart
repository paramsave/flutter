import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Mixed-Berry'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Image.asset('asset/images/mixed-berry.jpg'),
              ),
              Expanded(
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'MixBerry Pavlova',
                          style: TextStyle(fontSize: 40, color: Colors.pink),
                        ),
                        Text(
                          'Pavlova is a meringue-based dessert named after the Russian Ballerine Anna Pavlova.',
                          style: TextStyle(fontSize: 20, color: Colors.purple),
                        ),
                        Text(
                          'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                          style: TextStyle(fontSize: 20, color: Colors.purple),
                        ),
                      ],
                )),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.black),
                    Icon(Icons.star, color: Colors.black),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        Column(
                            children: [
                              Icon(Icons.kitchen, color: Colors.green[500]),
                              Text('PREP:'),
                              Text('25 min'),
                            ]),
                        Column(
                          children: [
                            Icon(Icons.timer, color: Colors.green[500]),
                            Text('COOK:'),
                            Text('1 hr'),
                          ]),
                        Column(
                          children: [
                            Icon(Icons.restaurant, color: Colors.green[500]),
                            Text('FEEDS:'),
                            Text('4-6'),
                          ]),

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
