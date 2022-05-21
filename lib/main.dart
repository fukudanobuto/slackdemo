import 'package:coriander2/Next_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fab_animation.dart';
import './pages/HomeScreen.dart';
import './pages/DMScreen.dart';
import './pages/Mention.dart';
import './pages/SearchScreen.dart';
import './pages/MyScreen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNav',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  int _screen = 0;

  static List<Widget> _pageList = [
    HomeScreen(),
    DMScreen(),
    MentionScreen(),
    SearchScreen(),
    MyScreen(),
  ];

  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        backgroundColor: Colors.grey[800],
        icon: Icon(Icons.home,
        ),
        label:  'ホーム',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.grey[800],
        icon: Icon(Icons.question_answer,
        ),
        label: 'DM',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.grey[800],
        icon: Icon(Icons.alternate_email,
        ),
        label: 'メンション',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.grey[800],
        icon: Icon(Icons.search,
        ),
        label: '検索',
      ),
      BottomNavigationBarItem(
        backgroundColor: Colors.grey[800],
        icon: Icon(Icons.face,
        ),
        label: '自分',
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageList[_screen],

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.grey[800],
        fixedColor: Colors.white,
        iconSize: 35,

        currentIndex: _screen,

        onTap: (index) {
          setState(() {

            _screen = index;
          });
        },

        items: myBottomNavBarItems(),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            label: Text('スレッド'),
            icon: const Icon(Icons.edit_note,
              color: Colors.black,
            ),
            onPressed: (){},
          ),
          ActionButton(
            label: Text('スレッド'),
            icon: const Icon(Icons.person_add,
              color: Colors.black,
            ),
            onPressed: (){},
          ),
          ActionButton(
            label: Text('スレッド'),
            icon: const Icon(Icons.tag,
              color: Colors.black,
            ),
            onPressed: (){},),
        ],
      ),
    );
  }
}




