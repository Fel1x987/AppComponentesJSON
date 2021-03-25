import 'package:flutter/material.dart';

class HomePageAlternativo extends StatelessWidget {
  final opciones = [
    {
      "title": "Uno",
      "subtitle": "Elemento 1",
      "leading": Icons.card_travel_rounded,
      "trailing": Icons.adjust_rounded,
      "estilost": Colors.green.shade900,
      "estilossub": Colors.grey,
    },
    {
      "title": "Dos",
      "subtitle": "Elemento 2",
      "leading": Icons.airplanemode_active_rounded,
      "trailing": Icons.arrow_forward_ios_rounded,
      "estilost": Colors.green.shade800,
      "estilossub": Colors.grey,
    },
    {
      "title": "Tres",
      "subtitle": "Elemento 3",
      "leading": Icons.airport_shuttle_rounded,
      "trailing": Icons.arrow_right_rounded,
      "estilost": Colors.green.shade700,
      "estilossub": Colors.grey,
    },
    {
      "title": "Cuatro",
      "subtitle": "Elemento 4",
      "leading": Icons.anchor_rounded,
      "trailing": Icons.check_circle_outline_rounded,
      "estilost": Colors.green.shade600,
      "estilossub": Colors.grey,
    },
    {
      "title": "Cinco",
      "subtitle": "Elemento 5",
      "leading": Icons.beach_access_rounded,
      "trailing": Icons.done_outline_rounded,
      "estilost": Colors.green.shade500,
      "estilossub": Colors.grey,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listTile'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  /* List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //lista.add(tempWidget);
      //lista.add(Divider());
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  } */

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(5, 10, 5, 5),
            alignment: Alignment.bottomRight,
            child: ListTile(
              title: Text((item['title']),
                  style: TextStyle(
                      color: (item['estilost']),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500)),
              subtitle: Text((item['subtitle']),
                  style: TextStyle(
                      color: (item['estilossub']),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300)),
              leading: Container(
                  padding: EdgeInsets.all(5.8), child: Icon(item['leading'])),
              trailing: Icon(item['trailing']),
              onTap: () {},
            ),
            decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                )),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
