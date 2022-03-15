import 'package:bloc_volunteer_service/presentaion/widgets/text_controllers.dart';
import 'package:flutter/material.dart';

import 'package:bloc_volunteer_service/core/constant.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final probleController = TextEditingController();
  final locationController = TextEditingController();
  final descripationController = TextEditingController();
  final solutionController = TextEditingController();
  final solutionDescriptionController = TextEditingController();
  List counts = [
    requirementsCount1,
    requirementsCount2,
    requirementsCount3,
    requirementsCount4,
    requirementsCount5,
    requirementsCount6,
    requirementsCount7,
    requirementsCount8,
    requirementsCount9,
    requirementsCount10,
    requirementsCount11,
    requirementsCount12,
    requirementsCount13,
    requirementsCount14,
    requirementsCount15,
    requirementsCount16,
    requirementsCount17,
    requirementsCount18,
    requirementsCount19,
    requirementsCount20
  ];
  List controllers = [
    requierment1,
    requierment2,
    requierment3,
    requierment4,
    requierment5,
    requierment6,
    requierment7,
    requierment8,
    requierment9,
    requierment10,
    requierment11,
    requierment12,
    requierment13,
    requierment14,
    requierment15,
    requierment16,
    requierment17,
    requierment18,
    requierment19,
    requierment20,
    requierment21,
    requierment22,
    requierment23,
    requierment24,
    requierment25,
    requierment26,
    requierment27,
    requierment28,
    requierment29,
    requierment30,
    requierment31,
    requierment32,
    requierment33,
    requierment34,
    requierment35,
    requierment36,
    requierment37,
    requierment38,
    requierment39,
    requierment40,
    requierment41,
    requierment42,
    requierment43,
    requierment44,
    requierment45,
    requierment46,
    requierment47,
    requierment48,
    requierment49,
    requierment50,
    requierment51,
    requierment52,
    requierment53,
    requierment54,
    requierment55,
    requierment56,
    requierment57,
    requierment58,
    requierment59,
    requierment60
  ];
  String defaultvalue = 'A';
  int length = 0;
  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Column(
            children: const [
              SizedBox(
                height: 13,
              ),
              Text(
                'Dubai',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.location_on,
            size: 30,
            color: Colors.orange,
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: 100,
                color: Colors.orange,
              )),
        ]),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'ISSUE',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              ConstSize.kheight,
              Inputfield(
                height: 40,
                controller: probleController,
                title: 'Problem',
                hint: 'Problem',
              ),
              ConstSize.kheight,
              Inputfield(
                height: 60,
                controller: locationController,
                title: 'Location',
                hint: 'Location',
              ),
              ConstSize.kheight,
              Inputfield(
                controller: descripationController,
                height: 90,
                title: 'Descripation',
                hint: 'Descripation',
              ),
              ConstSize.kheight,
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 6.0),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(width: 2, color: Colors.grey.shade400)),
                    child: const Center(
                      child: Icon(
                        Icons.photo_camera_outlined,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                  );
                },
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('SOLUTION',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Inputfield(
                  height: 50,
                  controller: solutionController,
                  title: "Solution",
                  hint: 'Solution'),
              ConstSize.kheight,
              Inputfield(
                  height: 90,
                  controller: solutionDescriptionController,
                  title: 'Description',
                  hint: 'Descripation'),
              const Divider(),
              const Text('Number of Volunteer'),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('No Limit'),
                          const SizedBox(
                            width: 5,
                          ),
                          Checkbox(value: false, onChanged: (value) {}),
                        ],
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: 25,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                              child: const Text('+')),
                          const SizedBox(
                            width: 8,
                          ),
                          Text('$count'),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  count--;
                                });
                              },
                              child: const Text('-'))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ConstSize.kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('REQUIREMENTS',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              ListView.builder(
                itemCount: length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  //controllers.add();
                  return Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 2, color: Colors.grey)),
                            child: TextFormField(
                              controller: controllers[index],
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 10,
                            )),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        counts[index]++;
                                      });
                                    },
                                    child: const Text('+')),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('${counts[index]}'),
                                const SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        counts[index]--;
                                      });
                                    },
                                    child: const Text('-'))
                              ],
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 2, color: Colors.grey)),
                          ),
                        ),
                        const Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 10,
                            )),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: DropdownButton<String>(
                              value: defaultvalue,
                              items: ['A', 'B', 'C', 'D'].map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value1) {
                                setState(() {
                                  defaultvalue = value1!;
                                });
                              },
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 2, color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    print(requierment1.text);
                    setState(() {
                      length++;
                    });
                  },
                  child: const Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}

class Inputfield extends StatelessWidget {
  const Inputfield({
    Key? key,
    required this.height,
    required this.controller,
    required this.title,
    required this.hint,
  }) : super(key: key);
  final double height;
  final TextEditingController controller;
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 2, color: Colors.grey)),
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
