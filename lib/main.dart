import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
        'https://scontent.fcpq14-1.fna.fbcdn.net/v/t1.18169-9/11121_973089242703317_8160445769658298470_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=ma5UBClk9dIAX_lPBfi&_nc_ht=scontent.fcpq14-1.fna&oh=00_AT9W6qR33e7b5aq6mhyqK5FHMVw2nWBAMqFx9shj02UTRQ&oe=6315AD24'),
    radius: 150,
  );
  final nome = const Text(
    'Danilo Porto Rosa',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: () {},
  );
  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.email),
    onPressed: () {},
  );
  final botaoSMS = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: () {},
  );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        foto,
        nome,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [botaoTelefone, botaoEmail, botaoSMS],
        )
      ]),
    );
  }
}
