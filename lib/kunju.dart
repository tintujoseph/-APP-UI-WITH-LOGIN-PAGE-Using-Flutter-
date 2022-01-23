import 'package:flutter/material.dart';

class ss extends StatelessWidget {
  const ss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.pink[200],
            leading: CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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'),
            ),
            title: Text('Kunju', style: TextStyle(color: Colors.white)),
            actions: [
              Icon(Icons.call),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.video_call),
              Icon(Icons.more_vert)
            ]),
        body: Column(children: [
          Padding(padding: EdgeInsets.all(20)),
          SizedBox(height: 10),
          Container(
              child: ListTile(
            title:
                Text('hi how are you', style: TextStyle(color: Colors.black)),
          )),
          SizedBox(height: 10),
          Container(
              child: ListTile(
            trailing:
                Text('Im also Good ', style: TextStyle(color: Colors.black)),
          )),
          SizedBox(height: 10),
          Container(
              child: ListTile(
            trailing: Text('hi baby....im fine and what about you ',
                style: TextStyle(color: Colors.black)),
          )),
          SizedBox(height: 340),
          Expanded(
              child: ListTile(
                  leading: Text(' Type here....                           '),
                  trailing: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.send),
                    backgroundColor: Colors.blue,
                  )))
        ]));
  }
}
