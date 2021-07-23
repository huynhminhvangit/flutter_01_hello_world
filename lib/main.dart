import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String name = 'Vang IT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello, World!',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey globalTextKey = new GlobalKey();
  GlobalKey globalButtonKey = new GlobalKey();

  double width = 50;
  double height = 50;

  _onClick() {
    RenderBox renderBox =
        globalTextKey.currentContext?.findRenderObject() as RenderBox;

    print(renderBox.size);
    print(renderBox.localToGlobal(Offset.zero));

    MyApp app = globalButtonKey.currentContext
        ?.findAncestorWidgetOfExactType<MyApp>() as MyApp;
    print(app.name);

    setState(() {
      width = width + 10;
      height = height + 10;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, World!'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!!!',
              key: globalTextKey,
            ),
            Container(
              color: Colors.blue,
              width: width,
              height: height,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        key: globalButtonKey,
        tooltip: 'Click',
        child: Icon(Icons.add),
      ),
    );
  }
}
