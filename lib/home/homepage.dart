import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note": "Curabitur posuere, est vel cursus consectetur",
      "image": "1.png"
    },
    {
      "note": "nisi nibh lacinia mauris, vitae bibendum risus metus non nibh.",
      "image": "2.png"
    },
    {
      "note": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rhoncus",
      "image": "3.png"
    },
    {
      "note": "Morbi id urna sapien. Etiam sit amet commodo arcu, non congue lacus.",
      "image": "4.png"
    },
     {
      "note": " Suspendisse hendrerit est at Nam rhoncus malesuada magna non lacinia.",
      "image": "5.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent[200],
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return/* Dismissible(
                  key: (),
                  child:*/ ListNotes(
                    notes: notes[i],
                  );
            }),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  const ListNotes({this.notes, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                "${notes['image']}",
                fit: BoxFit.fill,
                height: 80,
              )),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text("${notes['note']}"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
