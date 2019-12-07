import 'package:burc_ozellikleri/main.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  int index;
  Burc burc;

  BurcDetay(this.index);

  @override
  Widget build(BuildContext context) {
    //detayına tıklanan burç nesnesi
    burc = BurcOzellikleri.burcListesi[index];

    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + burc.buyukResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text(burc.burcAdi + " burcu özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child: Text(burc.burcDetayi,
                    style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
