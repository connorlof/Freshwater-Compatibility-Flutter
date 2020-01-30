import 'package:flutter/material.dart';
import 'package:freshwater_compat_flutter/screens/fish_select_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var addedFishList = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Freshwater Compatibility'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image(
              image: AssetImage('images/fish_tank_empty.png'),
            ),
          ),
          Center(
            child: Text('Add a fish to begin'),
          ),
          Center(
            child: Text('Details'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlineButton(
                child: Text('Add Fish'),
                onPressed: () async {
                  var fishToAdd = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FishSelectScreen()));

                  if (fishToAdd != null) {
                    print('added: ' + fishToAdd);
                    addedFishList.add(fishToAdd);
                    print(addedFishList);
                  }
                },
              ),
              OutlineButton(
                child: Text('Clear Tank'),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
