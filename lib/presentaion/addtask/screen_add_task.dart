import 'dart:convert';

import 'package:bloc_volunteer_service/model/services_model.dart';
import 'package:bloc_volunteer_service/presentaion/addtask/requirement_screen.dart';
import 'package:bloc_volunteer_service/services/service_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

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
  var image;
  var image2;
  var image3;
  var image4;
  var image5;
  var image6;


  void _uploadImage() async {

    final _picker = ImagePicker();

    var _pickedImage = await _picker.getImage(source: ImageSource.gallery);


    setState(() {

      image = _pickedImage?.path;
    });

  }
  void _uploadImage2() async {

    final _picker = ImagePicker();


    var _pickedImage2 = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      image2= _pickedImage2?.path;

    });

  }
  void _uploadImage3() async {

    final _picker = ImagePicker();


    var _pickedImage3 = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      image3= _pickedImage3?.path;

    });

  }
  void _uploadImage4() async {

    final _picker = ImagePicker();


    var _pickedImage4 = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      image4= _pickedImage4?.path;

    });

  }
  void _uploadImage5() async {

    final _picker = ImagePicker();


    var _pickedImage5 = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      image5= _pickedImage5?.path;

    });

  }
  void _uploadImage6() async {

    final _picker = ImagePicker();


    var _pickedImage6 = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      image6= _pickedImage6?.path;

    });

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
          ConstSize.kheight1,
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


              Row(
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade400)),
                    child:  Center(
                      child: GestureDetector(
                        onTap: _uploadImage2,
                        child:image2 != null ? Image.file(File(image2)) :  Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),

                  ConstSize.kwidth,
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade400)),
                    child:  Center(
                      child: GestureDetector(
                        onTap: _uploadImage,
                        child:image != null ? Image.file(File(image)) :  Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),

                  ConstSize.kwidth,
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade400)),
                    child:  Center(
                      child: GestureDetector(
                        onTap: _uploadImage3,
                        child:image3 != null ? Image.file(File(image3)) :  Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ConstSize.kheight,
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade400)),
                    child:  Center(
                      child: GestureDetector(
                        onTap: _uploadImage4,
                        child:image4 != null ? Image.file(File(image4)) :  Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),

                  ConstSize.kwidth,
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade400)),
                    child:  Center(
                      child: GestureDetector(
                        onTap: _uploadImage5,
                        child:image5 != null ? Image.file(File(image5)) :  Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),

                  ConstSize.kwidth,
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                        Border.all(width: 2, color: Colors.grey.shade400)),
                    child:  Center(
                      child: GestureDetector(
                        onTap: _uploadImage6,
                        child:image6 != null ? Image.file(File(image6)) :  Icon(
                          Icons.photo_camera_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(),
             ConstSize.kheight1,
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
             ConstSize.kheight1,
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
                         ConstSize.kwidth,
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
                      endTripUpload(filepath: image);
                       endTripUpload(filepath: image2);
                      endTripUpload(filepath: image3);
                      endTripUpload(filepath: image4);
                      endTripUpload(filepath: image5);
                      endTripUpload(filepath: image6);

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
Future<String> endTripUpload({filepath}) async {
  const String url = 'https://volunteer.cyberfort.co.in/api/save-service';
  var request = http.MultipartRequest('POST', Uri.parse(url));
  request.files.add(http.MultipartFile('image[]',
      File(filepath).readAsBytes().asStream(), File(filepath).lengthSync(),
      filename: filepath.split("/").last));

  var res = await request.send();

  res.stream.transform(utf8.decoder).listen((value) {
    print(value);
  });
  return '';
}
// Dio dio = new Dio();
// FormData formdata = new FormData(); // just like JS
// formdata.add("photos", new UploadFileInfo(_image, basename(_image.path)));
// dio.post(uploadURL, data: formdata, options: Options(
// method: 'POST',
// responseType: ResponseType.PLAIN // or ResponseType.JSON
// ))
// .then((response) => print(response))
// .catchError((error) => print(error));
