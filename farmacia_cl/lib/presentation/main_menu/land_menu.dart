import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';


class MainMenuHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        // onVerticalDragUpdate: (details){
        //   if(details.primaryDelta! < -20){
        //     Navigator.of(context).push(
        //       PageRouteBuilder(
        //         transitionDuration: const Duration(milliseconds: 440),
        //         pageBuilder: (context,animation,_){
        //           return FadeTransition(
        //             opacity: animation,
        //             child: MainMenuPage()
        //           );
        //         }
        //        )
        //     );
        //   }
        // },
        child: Stack(
          children: [
            SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Theme.of(context).primaryColor,Colors.white]
                  )
                ),
              )
            ),
              ...menuOptions.sublist(0,3).asMap().map((i, element) {
                double currheight = ((0.9)*pow((i+2),2))/pow(5,2);
                // double currPosition = ((i+2)*0.05);
                return MapEntry(i,
                Positioned(
                height: size.height*currheight,
                left:0,
                right:0,
                top: size.height/2.7,
                child: Hero(
                  tag: element.name,
                  child: Image.asset(element.image),
                ),
                )
                );
                }
                ).values.toList(),

                Positioned(
                  top:size.height/6,
                  left: size.width/6,
                  child: ClipRect(
                      child: new Stack(
                        children: [
                          new Positioned(
                            top: 2.0,
                            left: 2.0,
                            child: new Text(
                              'Farmacia SR',
                              textAlign:TextAlign.center,
                              style: TextStyle(fontSize:40,fontWeight:FontWeight.bold,color: Color.fromARGB(255, 100, 169, 225)),
                            ),
                          ),
                          new BackdropFilter(
                            filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                            child: new Text('Farmacia SR',
                             textAlign:TextAlign.center,
                             style: TextStyle(fontSize:40,fontWeight:FontWeight.bold,color: Color.fromARGB(255, 100, 169, 225))),
                          ),
                        ],
                      )
                ),
                ),
                Positioned(
                  top:size.height/4,
                  left: size.width/2.5,

                  child: Image.asset('assets/logos/farmacia_sr_ch.png',
                  width: size.width/5,
                  height: size.width/5,
                    color: Color.fromARGB(255, 100, 169, 225)
                  ),
                )
            
          ],
        ),
      )
    );
  }

}





class MainMenu{
  MainMenu({
    required this.name,
    required this.description,
    required this.image,
  });
  final String name;
  final String image;
  final String description;
}


List<MainMenu> menuOptions = [
  
  MainMenu(
    image: 'assets/logos/cash_cut.png',
    name: 'Cortes de efectivo',
    description: 'Registro de ventas basado en turno de empleados y efectivo en caja'
  ),
  // MainMenu(
  //   image: 'assets/logos/graphs.png',
  //   name: 'Estadisticas de ventas',
  //   description: 'Analisis de ventas y compras con diagramas'
  // ),
  MainMenu(
    image: 'assets/logos/heat_printer.png',
    name: 'Ticket de venta',
    description: 'Registrar venta e impimir ticket'
  ),
  // MainMenu(
  //   image: 'assets/logos/patient_archive.png',
  //   name: 'Archivo de pacientes',
  //   description: 'Registro del historial de pacientes con sus respectivas cuentas'
  // ),
  // MainMenu(
  //   image: 'assets/logos/documents_antibiotics.png',
  //   name:'Documentos de antibioticos',
  //   description: 'Documento PDF de registro de todos los antibioticos dispensados'
  // ),
  MainMenu(
    image: 'assets/logos/medicine_inventory.png',
    name:'Inventario de medicamentos',
    description: 'Registro de productos, categorizacion y seguimiento de existencias y caducidad'
  )
];



