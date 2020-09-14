import 'package:flutter/material.dart';
import 'package:musica/Dados.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Divider(
            height: 30,
          ),
          Text(
            "Anime",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
              width: (size * 0.82).width,
              height: (size * 0.22).height,
              child: ListView.builder(
                  itemCount: anime.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return anime[index]["favorite"] == true
                        ? SizedBox(
                            width: (size * 0.5).width,
                            height: (size * 1).height,
                            child: Card(
                                child: Column(
                              children: [
                                Image.asset(
                                  anime[index]["imagem"],
                                  width: 120,
                                ),
                                ListTile(
                                  title: Text(
                                    anime[index]["nome"],
                                  ),
                                  subtitle: Text(anime[index]["autor"]),
                                )
                              ],
                            )))
                        : Text("");
                  })),
          Text(
            "Rock",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
              width: (size * 0.82).width,
              height: (size * 0.22).height,
              child: ListView.builder(
                  itemCount: rock.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return rock[index]["favorite"] == true
                        ? SizedBox(
                            width: (size * 0.5).width,
                            height: (size * 1).height,
                            child: Card(
                                child: Column(
                              children: [
                                Image.asset(
                                  rock[index]["imagem"],
                                  width: 120,
                                ),
                                ListTile(
                                  title: Text(
                                    rock[index]["nome"],
                                  ),
                                  subtitle: Text(rock[index]["autor"]),
                                )
                              ],
                            )))
                        : Text("");
                  })),
          Text(
            "Funk",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
              width: (size * 0.82).width,
              height: (size * 0.22).height,
              child: ListView.builder(
                  itemCount: funk.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return funk[index]["favorite"] == true
                        ? SizedBox(
                            width: (size * 0.5).width,
                            height: (size * 1).height,
                            child: Card(
                                child: Column(
                              children: [
                                Image.asset(
                                  funk[index]["imagem"],
                                  width: 120,
                                ),
                                ListTile(
                                  title: Text(
                                    funk[index]["nome"],
                                  ),
                                  subtitle: Text(funk[index]["autor"]),
                                )
                              ],
                            )))
                        : Text("");
                  })),
          Text(
            "Sertanejo",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
              width: (size * 0.82).width,
              height: (size * 0.22).height,
              child: ListView.builder(
                  itemCount: sertanejo.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return sertanejo[index]["favorite"] == true
                        ? SizedBox(
                            width: (size * 0.5).width,
                            height: size.height,
                            child: Card(
                                child: Column(
                              children: [
                                Image.asset(
                                  sertanejo[index]["imagem"],
                                  width: 120,
                                ),
                                ListTile(
                                  title: Text(
                                    sertanejo[index]["nome"],
                                  ),
                                  subtitle: Text(sertanejo[index]["autor"]),
                                )
                              ],
                            )))
                        : Text("");
                  })),
        ],
      ),
    );
  }
}
