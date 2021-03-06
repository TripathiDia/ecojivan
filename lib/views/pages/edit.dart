import 'package:dropdown_search/dropdown_search.dart';
import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: paddingall,
        child: Card(
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  name,
                  style: namestyle,
                ),
              ),
              Padding(
                padding: bottom,
                child: TextField(),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    gender,
                    style: namestyle,
                  )),
              Padding(
                padding: paddingtb,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.female),
                        label: Text(
                          female,
                          style: genderstyle,
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.male),
                        label: Text(
                          male,
                          style: genderstyle,
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.transgender),
                        label: Text(
                          trans,
                          style: genderstyle,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      looking,
                      style: namestyle,
                    )),
              ),
              MultiSelectChipGroup(
                labelFontSize: 16,
                items: [health, diab, obese, hyper, pcos, stress],
                onSelectionChanged: (values) {
                  print(values);
                },
                horizontalChipSpacing: 10,
                selectedColor: Colors.green,
                disabledColor: Colors.white,
                leftCommonIcon: Icons.perm_identity,
                leftIcons: [
                  Icons.alarm,
                  Icons.ac_unit,
                  Icons.accessibility,
                  Icons.account_balance,
                  Icons.perm_identity,
                  Icons.perm_identity,
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '$height (in cm)',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '$weigh (in kg)',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            age,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Blood Group',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('A+'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('A-'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('B+'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('B-'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('AB+'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('A'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('AB-'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('O+'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Text('O-'),
                      ),
                    ),
                  ],
                ),
              ),
                MultiSelectChipGroup(
                labelFontSize: 16,
                items: [health, diab, obese, hyper, pcos, stress],
                onSelectionChanged: (values) {
                  print(values);
                },
                horizontalChipSpacing: 10,
                selectedColor: Colors.green,
                disabledColor: Colors.white,
                leftCommonIcon: Icons.perm_identity,
                leftIcons: [
                  Icons.alarm,
                  Icons.ac_unit,
                  Icons.accessibility,
                  Icons.account_balance,
                  Icons.perm_identity,
                  Icons.perm_identity,
                ],
              ),

              ElevatedButton(
                onPressed: () {},
                 child: Text('Update'))
            ],
          ),
        ),
      ),
    );
  }
}
