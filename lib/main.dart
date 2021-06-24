import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appgit/app_config.dart';

/*void main() {
  runApp(MyApp());
}*/
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:NinjaCard(),
    );
  }
}


class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(AppConfig.of(context).appName),
        centerTitle:true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0 , 30.0, 0.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( 'you are running ${AppConfig.of(context).flavor} '),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/bird.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color:Colors.grey[800],
            ),
            //le divider  separe les 2 compartiment par une distance egal au height
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0), //ce box est invisible ca sert d espacement
            Text(
                'Pracy',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
                'CURRENT NINJA LEVEL',

                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0), //ce box est invisible ca sert d espacement
            Text(
                '$ninjalevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children:[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text(
                  'pracy.quelquechose',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ]
            )
          ],
        )
      ),
    );
  }
}
