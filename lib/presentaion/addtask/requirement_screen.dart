import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:bloc_volunteer_service/presentaion/widgets/text_controllers.dart';
import 'package:flutter/material.dart';

class RequirementsScreen extends StatefulWidget {
  const RequirementsScreen({Key? key}) : super(key: key);

  @override
  State<RequirementsScreen> createState() => _RequirementsScreenState();
}

class _RequirementsScreenState extends State<RequirementsScreen> {
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
  var item = ['a', 'b', 'c'];
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
  var dropDown = [
    dropdwon1,
    dropdwon2,
    dropdwon3,
    dropdwon4,
    dropdwon5,
    dropdwon6,
    dropdwon7,
    dropdwon8,
    dropdwon9,
    dropdwon10,
    dropdwon11,
    dropdwon12,
    dropdwon13,
    dropdwon14,
    dropdwon15,
    dropdwon16,
    dropdwon17,
    dropdwon18,
    dropdwon19,
    dropdwon20,
  ];

  var defaultvalue = [
    defaultvalue1,
    defaultvalue2,
    defaultvalue3,
    defaultvalue4,
    defaultvalue5,
    defaultvalue6,
    defaultvalue7,
    defaultvalue8,
    defaultvalue9,
    defaultvalue10,
    defaultvalue11,
    defaultvalue12,
    defaultvalue13,
    defaultvalue14,
    defaultvalue15,
    defaultvalue16,
    defaultvalue17,
    defaultvalue18,
    defaultvalue19,
    defaultvalue20,
  ];
  // String defaultvalue = 'a';
  int length = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
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
              ConstSize.kheight,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
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
                            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                            padding: const EdgeInsets.all(8),
                            child: DropdownButton(
                                borderRadius: BorderRadius.circular(0),
                                elevation: 0,
                                underline: Container(),
                                iconSize: 25,
                                isExpanded: true,
                                focusColor: Colors.transparent,
                                iconEnabledColor: Colors.black,
                                dropdownColor: Colors.white,
                                value: defaultvalue[index],
                                items: dropDown[index]
                                    .map((String items) => DropdownMenuItem(
                                        value: items, child: Text(items)))
                                    .toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    defaultvalue[index] = value!;
                                  });
                                }),
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
                  child: const Text('Add')),
            ],
          ),
        )),
      ),
    );
  }
}
