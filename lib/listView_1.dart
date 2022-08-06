import 'package:flutter/material.dart';
import 'package:nama/Nama.dart';

class list_view extends StatefulWidget {
  list_view({Key? key}) : super(key: key);

  @override
  State<list_view> createState() => _list_viewState();
}

Widget avatar(int index) {
  return CircleAvatar(
    radius: 22,
    child: Text(
      data[index].absen,
      style: TextStyle(
        color: Colors.white),
    ),
  );
}
Widget textData(int index) {
  return Expanded(
      child: Container(
    margin: EdgeInsets.only(left: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          data[index].name,
          style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Container(
          margin: EdgeInsets.only(top: 2),
          child: Text(data[index].game),
        ),
      ],
    ),
  ));
}

class _list_viewState extends State<list_view> {
  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absen Nama Siswa"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: data.length,
        itemBuilder: (buildContext, index) {
          return GestureDetector(
            onTap: () {
              //snackbar
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${data[index].name}"),
                duration: Duration(seconds: 2),
              ));
 },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  avatar(index),
                  textData(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}