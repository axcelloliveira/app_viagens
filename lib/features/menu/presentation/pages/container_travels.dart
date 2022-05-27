import 'package:flutter/material.dart';

import 'list_travels.dart';

class ContainerTravels extends StatelessWidget {
  const ContainerTravels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50)),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(23, 15, 23, 5),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Viagens programadas',
                    style: TextStyle(fontSize: 18),
                  ),
                  PopupMenuButton(
                      icon: const Icon(Icons.more_horiz),
                      itemBuilder: (context) => [
                             PopupMenuItem(
                              child: const Text('Ver todas as viagens '),
                              onTap: (){
                              },
                            ),

                          ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ListTravels(
                      title: 'BRACEL X ITAPUÃ',
                      color: Colors.red,
                      icon: Icons.taxi_alert_outlined,
                    ),
                    ListTravels(
                      title: 'UNIGEL X LIBERDADE II',
                      color: Colors.teal,
                      icon: Icons.local_taxi_outlined,
                    ),
                    ListTravels(
                      title: 'UNIGEL X SÃO CRISTOVÃO',
                      color: Colors.orange,
                      icon: Icons.local_taxi_outlined,
                    ),
                    ListTravels(
                      title: 'BRACEL X ITAPUÃ',
                      color: Colors.teal,
                      icon: Icons.local_taxi_outlined,
                    ),
                    ListTravels(
                      title: 'BRACEL X ITAPUÃ',
                      color: Colors.teal,
                      icon: Icons.local_taxi_outlined,
                    ),
                    ListTravels(
                      title: 'BRACEL X ITAPUÃ',
                      color: Colors.teal,
                      icon: Icons.local_taxi_outlined,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
