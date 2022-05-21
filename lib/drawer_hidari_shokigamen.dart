import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SamplePage(),
    ),
  );
}

class SamplePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('ヘッダー'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}


void mai() {
  runApp(
    MaterialApp(
      home: SamplePage(),
    ),
  );
}

class SamplPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('ヘッダー'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("ボタン"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}