import 'package:flutter/material.dart';
import 'package:tugas1/User.dart';

class ListDriver extends StatefulWidget {
  @override
  _ListDriverState createState() => _ListDriverState();
}

class _ListDriverState extends State<ListDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver"),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => User(
                          nama: "Gede Agus Mahendra",
                          umur: "20 tahun",
                          image:
                              "gambar/Agus.jpg",
                        )),
              );
            },
            child: Driver (
              nama: "Gede Agus Mahendra",
              umur: "20 tahun",
              image:
                  "gambar/Agus.jpg",
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => User(
                          nama: "I Gede Anggie Suardika Arpin",
                          umur: "20 tahun",
                          image:
                              "gambar/Arpin.jpg",
                        )),
              );
            },
            child: Driver(
              nama: "I Gede Anggie Suardika Arpin",
              umur: "20 tahun",
              image:
                  "gambar/Arpin.jpg",
            ),
          ),
        ],
      ),
    );
  }
}

class Driver extends StatelessWidget {
  Driver({Key key, this.nama, this.umur, this.image,})
      : super(key: key);
  final String nama;
  final String umur;
  final String image;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(this.image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.nama, //untuk nama
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                this.umur,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
