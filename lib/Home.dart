import 'package:flutter/material.dart';
import './Dados.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Divider(
            height: 50,
          ),
          Text(
            "Anime",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            width: (size * 0.8).width,
            height: (size * 0.27).height,
            child: ListView.builder(
                itemCount: anime.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (anime[index]["selected"]) {
                            anime[index]["selected"] = false;
                          } else {
                            anime[index]["selected"] = true;
                          }
                        });
                      },
                      child: SizedBox(
                          width: 150,
                          child: Card(
                              borderOnForeground: false,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "${anime[index]["imagem"]}",
                                    width: 1000,
                                    height: 80,
                                  ),
                                  ListTile(
                                    title: Text("${anime[index]["nome"]}"),
                                    subtitle: Text("${anime[index]["autor"]}"),
                                    selected: anime[index]["selected"],
                                    isThreeLine: true,
                                  ),
                                  Text(
                                    "De: ${anime[index]["anime"]}",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: anime[index]["favorite"] == false
                                            ? Colors.black
                                            : Colors.red,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (anime[index]["favorite"] ==
                                              false) {
                                            anime[index]["favorite"] = true;
                                          } else {
                                            anime[index]["favorite"] = false;
                                          }
                                        });
                                      })
                                ],
                              ))));
                }),
          ),
          Text(
            "Rock",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            width: (size * 0.8).width,
            height: (size * 0.23).height,
            child: ListView.builder(
                itemCount: rock.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (rock[index]["selected"]) {
                            rock[index]["selected"] = false;
                          } else {
                            rock[index]["selected"] = true;
                          }
                        });
                      },
                      child: SizedBox(
                          width: 150,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "${rock[index]["imagem"]}",
                                width: 1000,
                                height: 80,
                              ),
                              ListTile(
                                title: Text("${rock[index]["nome"]}"),
                                subtitle: Text("${rock[index]["autor"]}"),
                                selected: rock[index]["selected"],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: rock[index]["favorite"] == false
                                        ? Colors.black
                                        : Colors.red,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (rock[index]["favorite"] == false) {
                                        rock[index]["favorite"] = true;
                                      } else {
                                        rock[index]["favorite"] = false;
                                      }
                                    });
                                  })
                            ],
                          ))));
                }),
          ),
          Text(
            "Funk",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            width: (size * 0.8).width,
            height: (size * 0.23).height,
            child: ListView.builder(
                itemCount: funk.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (funk[index]["selected"]) {
                            funk[index]["selected"] = false;
                          } else {
                            funk[index]["selected"] = true;
                          }
                        });
                      },
                      child: SizedBox(
                          width: 150,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "${funk[index]["imagem"]}",
                                height: 80,
                                width: 1000,
                              ),
                              ListTile(
                                title: Text("${funk[index]["nome"]}"),
                                subtitle: Text("${funk[index]["autor"]}"),
                                selected: funk[index]["selected"],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: funk[index]["favorite"] == false
                                        ? Colors.black
                                        : Colors.red,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (funk[index]["favorite"] == false) {
                                        funk[index]["favorite"] = true;
                                      } else {
                                        funk[index]["favorite"] = false;
                                      }
                                    });
                                  })
                            ],
                          ))));
                }),
          ),
          Text(
            "Sertanejo",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            width: (size * 0.8).width,
            height: (size * 0.23).height,
            child: ListView.builder(
                itemCount: sertanejo.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (sertanejo[index]["selected"]) {
                            sertanejo[index]["selected"] = false;
                          } else {
                            sertanejo[index]["selected"] = true;
                          }
                        });
                      },
                      child: SizedBox(
                          width: 150,
                          child: Card(
                              child: Column(
                            children: [
                              Image.asset(
                                "${sertanejo[index]["imagem"]}",
                                height: 80,
                                width: 1000,
                              ),
                              ListTile(
                                title: Text("${sertanejo[index]["nome"]}"),
                                subtitle: Text("${sertanejo[index]["autor"]}"),
                                selected: sertanejo[index]["selected"],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: sertanejo[index]["favorite"] == false
                                        ? Colors.black
                                        : Colors.red,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (sertanejo[index]["favorite"] ==
                                          false) {
                                        sertanejo[index]["favorite"] = true;
                                      } else {
                                        sertanejo[index]["favorite"] = false;
                                      }
                                    });
                                  })
                            ],
                          ))));
                }),
          ),
        ],
      ),
    );
  }
}
