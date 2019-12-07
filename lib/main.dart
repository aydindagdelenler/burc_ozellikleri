import 'package:burc_ozellikleri/data/data.dart';
import 'package:burc_ozellikleri/burcDetay.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

void main() => runApp(BurcOzellikleri());

class BurcOzellikleri extends StatelessWidget {
  static List<Burc> burcListesi;

  @override
  Widget build(BuildContext context) {
    burcListesi = burcListesiDoldur();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Burç Özellikleri"),
          ),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
          itemCount: burcListesi.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: Image.asset("images/" + burcListesi[index].kucukResim),
              title: Text(burcListesi[index].burcAdi.toString()),
              subtitle: Text(burcListesi[index].burcTarihi.toString()),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                debugPrint("$index pressed!");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BurcDetay(index)));
              },
            ),
            margin: EdgeInsets.fromLTRB(7, 5, 7, 5),
            color: index % 2 == 0 ? Colors.pink.shade200 : Colors.pink.shade100,
            elevation: 10,
          ),
        ),
      ),
    );
  }

  List<Burc> burcListesiDoldur() {
    List<Burc> burc = [];
    for (int i = 0; i < BurcVeri.BURC_ADLARI.length; i++) {
      String kucukResim =
          BurcVeri.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukResim =
          BurcVeri.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";

      Burc yeniBurc = Burc(BurcVeri.BURC_ADLARI[i],
          BurcVeri.BURC_TARIHLERI[i], kucukResim, buyukResim, BurcVeri.BURC_GENEL_OZELLIKLERI[i]);
      burc.add(yeniBurc);
    }
    return burc;
  }
}
