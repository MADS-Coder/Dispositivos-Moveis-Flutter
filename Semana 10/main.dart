import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  List<Item> items = [];
  MyHomePage(){
    items = [];
    items.add(Item(nome: "Arroz", chek: true));
    items.add(Item(nome: "Feijao", chek: true));
    items.add(Item(nome: "Farinha", chek: true));
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("OP"),
        title: Text("Home"),
        actions: <Widget>[
          Icon(Icons.local_grocery_store),
        ],
      ),
      body: ListView.builder ( 
        itemCount: widget.items.length,
        itemBuilder: (BuildContext contex, int index) {
          final item = widget.items[index];
          return CheckboxListTile(
            title: Text(item.nome),
            subtitle: Text("Este item ${item.chek ? "" : "não"} está selecionado"),
            key: Key(item.nome),
            value: item.chek,
            onChanged: (value) {
              setState(() {
                item.chek = value;
              });
              print("Mudou check da palavra ${item.nome} para: $value",);
          });
        },
      ),
    );
  }
}

class Item{
  String nome;
  bool chek;
  Item({this.nome, this.chek});
}