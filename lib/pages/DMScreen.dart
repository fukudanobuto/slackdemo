import 'package:coriander2/Next_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DMScreen extends StatelessWidget {
  const DMScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
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

  final items = List<String>.generate(10000, (i) => 'Item $i');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        backgroundColor: Colors.black12,

        title: Text('ダイレクトメッセージ'),

        actions: <Widget>[
          Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              )
          ),
        ],
      ),

      backgroundColor: Colors.grey[800],

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              OutlinedButton(
                child:  Text('別の会話へ移動'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  side: const BorderSide(color: Colors.grey),
                ),
                onPressed: () {
                  Navigator.push(

                    context,
                    MaterialPageRoute(builder: (context) => NextPage('')),
                  );
                },
              ),




            ]
        ),
      ),
    );

  }
}