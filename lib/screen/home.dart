import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Bienvenido'),
        actions: [
          popUpAppBar(),
        ],
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0)),
        ),
        width: MediaQuery.of(context).size.width / 1.5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 300.0,
                    height: 300.0,
                    child: Text(
                      'Cuenta de ahorros',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      width: MediaQuery.of(context).size.width / 2,
                      height: 90.0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 5.0),
                        child: Column(
                          children: [
                            Text(
                              'Daniel Alexander Patiño Vásquez',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Correodeprueba@gmail.com\nCta. 40xxxxxxxx87',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text('Banco de prueba'),
              ],
            ),
            ListTile(
              leading: Icon(Icons.data_saver_off_outlined),
              title: Text('Posición Consolidada'),
            ),
            ExpansionTile(
              leading: Icon(Icons.swap_horizontal_circle_outlined),
              title: Text('Transferencias'),
              children: [
                ListTile(
                  title: Text('Entre cuentas internas'),
                ),
                ListTile(
                  title: Text('A otras instituciones'),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.work),
              title: Text('Servicios'),
              children: [
                ListTile(
                  title: Text('Servicio al cliente'),
                ),
                ListTile(
                  title: Text('Servicios de la cuenta'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.output_outlined),
              title: Text('Cerrar Sesión'),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: PhysicalModel(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25.0),
                elevation: 10,
                child: Card(
                  color: Colors.white.withOpacity(0.8),
                  shadowColor: Colors.grey,
                  elevation: 10.0,
                  child: Column(
                    children: [
                      Text('Datos'),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: PhysicalModel(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25.0),
                elevation: 10,
                child: Card(
                  color: Colors.white.withOpacity(0.8),
                  shadowColor: Colors.grey,
                  elevation: 10.0,
                  child: Column(
                    children: [
                      Text('Datos'),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: PhysicalModel(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25.0),
                elevation: 10,
                child: Card(
                  color: Colors.white.withOpacity(0.8),
                  shadowColor: Colors.grey,
                  elevation: 10.0,
                  child: Column(
                    children: [
                      Text('Datos'),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        tooltip: 'Recargar',
      ),
    );
  }
}

class popUpAppBar extends StatelessWidget {
  const popUpAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      tooltip: 'Opciones',
      itemBuilder: (context) {
        return const [
          PopupMenuItem<int>(
            value: 0,
            child: Text("Cerrar Sesión"),
          ),
          PopupMenuItem<int>(
            value: 1,
            child: Text("Idioma"),
          ),
        ];
      },
      onSelected: (value) async {
        if (value == 0) {
          print('1');
        } else if (value == 1) {
          print('2');
        }
      },
    );
  }
}
