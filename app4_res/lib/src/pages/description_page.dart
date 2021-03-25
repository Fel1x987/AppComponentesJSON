import 'package:app4_res/src/providers/menu_provider.dart';
import 'package:app4_res/src/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descripción de la caída de Reach'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //Future Builder, el context dice a donde moverse. En otras paginas o algo asi ajaj
    return FutureBuilder(
      future: menuProvider.cargarData3(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    //el bluid context es como para saber a donde vamos.
    final List<Widget> opciones = [];
    data.forEach((opt) {
      if (opt["id"] == 3) {}
      final widgetTemp = Column(
        children: [Text(opt["sub"]), Divider()],
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
