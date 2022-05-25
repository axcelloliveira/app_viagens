import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[700],
      drawer: const Drawer(),

      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.notes_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text(
            'TSilveira',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.amberAccent[700],
          elevation: 0),
      //   bottomNavigationBar: FloatBottomBar(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (value) {
          print(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: ''),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Disponivel para viagens',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Mude seu status ao lado',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 11.8),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amberAccent[400],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Viagens não Programadas',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:2.0, right: 2, top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ListTile(
                            title: Text('Teste'),
                            leading: Icon(Icons.home),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0, right: 2, top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ListTile(
                            title: Text('Teste'),
                            leading: Icon(Icons.home),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0, right: 2, top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ListTile(
                            title: Text('Teste'),
                            leading: Icon(Icons.home),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Viagens programadas',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:2.0, right: 2, top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ListTile(
                            title: Text('Teste'),
                            leading: Icon(Icons.home),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0, right: 2, top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ListTile(
                            title: Text('Teste'),
                            leading: Icon(Icons.home),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0, right: 2, top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const ListTile(
                            title: Text('Teste'),
                            leading: Icon(Icons.home),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
