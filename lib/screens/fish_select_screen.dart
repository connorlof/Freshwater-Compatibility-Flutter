import 'package:flutter/material.dart';

class FishSelectScreen extends StatefulWidget {
  FishSelectScreen({@required this.fish});

  final fish;

  @override
  _FishSelectScreenState createState() => _FishSelectScreenState();
}

class _FishSelectScreenState extends State<FishSelectScreen> {
  List<String> fishList;

  @override
  void initState() {
    super.initState();
    fishList = widget.fish;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Fish'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: fishList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context, fishList[index]);
                  },
                  child: Container(
                    height: 50,
                    color: Colors.blueGrey.shade300,
                    child: Center(child: Text('${fishList[index]}')),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
          OutlineButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
