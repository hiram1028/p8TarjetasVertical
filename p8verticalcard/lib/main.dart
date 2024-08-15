import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Tarjeta vertical',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "RED",
    "YELLOW",
    "Perez",
    "BLUE",
    "GREY",
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula5.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula4.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula3.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula2.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula1.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perez vertical',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
