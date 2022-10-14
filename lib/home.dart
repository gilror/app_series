import 'package:flutter/material.dart';
import 'package:movie_app/media_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cuevana UTXJ app 191004",
          style: TextStyle(fontFamily: "Oswald"),
        ),
        backgroundColor: Colors.black12,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          const DrawerHeader(child: Material()),
          const ListTile(
            title: Text("Peliculas"),
            trailing: Icon(Icons.local_movies),
          ),
          const Divider(
            height: 5.0,
          ),
          const ListTile(
            title: Text("Televisión"),
            trailing: Icon(Icons.live_tv),
          ),
          const Divider(
            height: 5.0,
          ),
          ListTile(
            title: const Text("Cerrar"),
            trailing: const Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      )),
      body: PageView(
        children: const <Widget>[MediaList()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      const BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: ("Populares")),
      const BottomNavigationBarItem(
          icon: Icon(Icons.update), label: ("Proximamente")),
      const BottomNavigationBarItem(
          icon: Icon(Icons.star), label: ("Mejor Valoradas")),
    ];
  }
}
