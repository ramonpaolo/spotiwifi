import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 200),
        child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/anime.jpeg",
                    width: 250,
                  ),
                  borderRadius: BorderRadius.circular(300),
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "Nome: ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Ramon Paolo Maran",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Idade: ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "17",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Estilo Músical: ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "POP, ANIME, ROCK, SAMBA,",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  "PAGODE, ANOS 80, ANOS 90, ELETRÔNICA",
                  style: TextStyle(color: Colors.white),
                ),
                Divider(),
                Text(
                  "O que gosta de fazer em seu tempo livre?",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Gosto de estudar programação no geral, ler livros e",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "escutar música.",
                  style: TextStyle(color: Colors.white),
                ),
                Divider(),
              ],
            )));
  }
}
