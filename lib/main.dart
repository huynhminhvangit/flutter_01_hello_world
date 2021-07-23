import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 4',
      theme: ThemeData(
        primaryColor: Colors.blue.shade100,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bai 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hello, world!!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Click',
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.amber.shade300,
          primaryColor: Colors.blue.shade100,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                  color: Colors.white70,
                ),
              ),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.remove), label: 'Remove'),
            BottomNavigationBarItem(
                icon: Icon(Icons.my_location), label: 'Location'),
          ],
          currentIndex: 3,
          fixedColor: Colors.blue,
        ),
      ),
      drawer: Drawer(

      ),
      endDrawer: Drawer(),
    );
  }
}
