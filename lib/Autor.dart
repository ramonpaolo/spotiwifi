import 'package:flutter/material.dart';
import 'package:musica/Dados.dart';

class Autor extends StatefulWidget {
  @override
  _AutorState createState() => _AutorState();
}

class _AutorState extends State<Autor> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Divider(),
            Text(
              "Anime",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
                width: (size * 0.82).width,
                height: (size * 0.2).height,
                child: ListView.builder(
                    itemCount: anime.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: (size * 0.5).width,
                          height: size.height,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/anime.jpeg",
                                width: 120,
                              ),
                              ListTile(
                                title: Text(
                                  anime[index]["autor"],
                                ),
                              )
                            ],
                          )));
                    })),
            Text(
              "Rock",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
                width: (size * 0.82).width,
                height: (size * 0.2).height,
                child: ListView.builder(
                    itemCount: rock.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: (size * 0.5).width,
                          height: size.height,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/anime.jpeg",
                                width: 120,
                              ),
                              ListTile(
                                title: Text(
                                  rock[index]["autor"],
                                ),
                              )
                            ],
                          )));
                    })),
            Text(
              "Funk",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
                width: (size * 0.82).width,
                height: (size * 0.2).height,
                child: ListView.builder(
                    itemCount: funk.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: (size * 0.5).width,
                          height: size.height,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/anime.jpeg",
                                width: 120,
                              ),
                              ListTile(
                                title: Text(
                                  funk[index]["autor"],
                                ),
                              )
                            ],
                          )));
                    })),
            Text(
              "Sertanejo",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
                width: (size * 0.82).width,
                height: (size * 0.2).height,
                child: ListView.builder(
                    itemCount: sertanejo.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: (size * 0.5).width,
                          height: size.height,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "assets/anime.jpeg",
                                width: 120,
                              ),
                              ListTile(
                                title: Text(
                                  sertanejo[index]["autor"],
                                ),
                              )
                            ],
                          )));
                    })),
          ],
        ));
  }
}
