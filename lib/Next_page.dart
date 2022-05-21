
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
 NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Navigator.pop(

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