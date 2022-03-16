import 'package:bloc_volunteer_service/model/services_model.dart';
import 'package:bloc_volunteer_service/presentaion/addtask/requirement_screen.dart';
import 'package:bloc_volunteer_service/services/service_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bloc_volunteer_service/core/constant.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  late ServiceModel serviceModel;
  final probleController = TextEditingController();
  final locationController = TextEditingController();
  final descripationController = TextEditingController();
  final solutionController = TextEditingController();
  final solutionDescriptionController = TextEditingController();

  int count = 0;
  @override
  void initState() {
    super.initState();
    serviceModel = ServiceModel();
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
        //reverse: true,
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
                height: 60,
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
                physics: const NeverScrollableScrollPhysics(),
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
              ConstSize.kheight,
              ElevatedButton(
                  onPressed: () async {
                    if (solutionController.text.isNotEmpty &&
                        solutionDescriptionController.text.isNotEmpty &&
                        count != 0 &&
                        probleController.text.isNotEmpty &&
                        locationController.text.isNotEmpty &&
                        descripationController.text.isNotEmpty) {
                      serviceModel.issueDesc = descripationController.text;
                      serviceModel.issueLoc = locationController.text;
                      serviceModel.issueTitle = solutionController.text;
                      serviceModel.taskDesc =
                          solutionDescriptionController.text;
                      serviceModel.taskTitle = solutionController.text;
                      serviceModel.volunteerLimit = count;
                    }
                    ServicesService servicesService = ServicesService();
                    servicesService.signup(serviceModel).then((value) {
                      print(value.message);
                      Get.to(() => const RequirementsScreen());
                    });
                  },
                  child: const Text('Add requirement'))
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
