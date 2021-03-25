// Se agrega el root blunde para trabajar con los JSON. Para acceder a algun recurso extrerno o interno en la app
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  //Es una variable que permite una serie de opciones dinamicas
  List<dynamic> opciones = [];

  _MenuProvider() {
    //Funcion que permite cargar datos
    cargarData();
  }
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    //Se espera a que lo que viene despues se actuaice para mostarlo
    //Usaremos el future,future es para utilizar algo en el futuro, es como una promesa
    //El async permite estar haciendo varios hilos de ejecución. Para que se actualice cada que haya cambios.
    //Se trabaja con un map, pq da ventajas, como
    Map dataMap = json.decode(resp);
    print(dataMap);
    opciones = dataMap['rutas'];
    return opciones;
  }

  Future<List<dynamic>> cargarData2() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    //Se espera a que lo que viene despues se actuaice para mostarlo
    //Usaremos el future,future es para utilizar algo en el futuro, es como una promesa
    //El async permite estar haciendo varios hilos de ejecución. Para que se actualice cada que haya cambios.
    //Se trabaja con un map, pq da ventajas, como
    Map dataMap = json.decode(resp);
    print(dataMap);
    opciones = dataMap['rutas2'];
    return opciones;
  }

  Future<List<dynamic>> cargarData3() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    //Se espera a que lo que viene despues se actuaice para mostarlo
    //Usaremos el future,future es para utilizar algo en el futuro, es como una promesa
    //El async permite estar haciendo varios hilos de ejecución. Para que se actualice cada que haya cambios.
    //Se trabaja con un map, pq da ventajas, como
    Map dataMap = json.decode(resp);
    print(dataMap);
    opciones = dataMap['rutas3'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
// Se esta regresando tal cual, con eso quita el error
