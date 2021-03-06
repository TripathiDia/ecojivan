import 'package:flutter/material.dart';

import '../../constraint.dart';

class PsychTherapy extends StatefulWidget {
  const PsychTherapy({ Key? key }) : super(key: key);

  @override
  _PsychTherapyState createState() => _PsychTherapyState();
}

class _PsychTherapyState extends State<PsychTherapy> {

  Card generateCard() {
    var cardImage = AssetImage('assets/logo.png');
    return Card(
        elevation: 10,
        child: Column(
          children: [
            Row(
              children: [

                Column(
                  children: [
                    CircleAvatar(),
                    Text(name, style: namestyle),
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Text("Know More")
                      )
                  ],
                ),
                // Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 15, top: 15),
                //       child: Align(
                //         alignment: Alignment.bottomLeft,
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(10.0), //or 15.0
                //           child: Container(
                //               height: 100.0,
                //               width: 90.0,
                //               color: PrimaryColor,
                //               child: Image.asset(
                //                 'assets/logo.png',
                //                 fit: BoxFit.cover,
                //               )),
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 15),
                //       child: Card(
                //         elevation: 10,
                //         child: Container(
                //             color: buttonColor,
                //             height: 30,
                //             width: 90,
                //             child: Center(
                //                 child: Text(
                //               exp,
                //               style: TextStyle(color: TertiaryColor),
                //             ))),
                //       ),
                //     )
                //   ],
                // ),
                Column(
                  children: [
                    Flexible(child: Card(child: ListTile(
                      leading: Icon(Icons.ac_unit),
                    ))),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          hospital,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(location),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(docname, style: bold),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(designation),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(price),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                         // onPressed: () => _show(context),
                          child: Text(consult))
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: Text(more),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          flexibleSpace: Container(
            decoration: gradientdecoration,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  generateCard(),
                  generateCard(),
                  generateCard(),
                  generateCard(),
                  
                ],
              )),
        )
      
    );
  }
}