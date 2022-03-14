import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  int _counter = 0;
  bool _ischecked = false;
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  void _increment() {
    setState(() {
      if (_counter <= 4) {
        _counter++;
        print('ah');
        return;
      }
    });
  }

  void _decrement() {
    debugPrint('on tap');

    setState(() {
      if (_counter > 0) {
        _counter--;
        return;
      }
    });
  }

  var nameTECs = <TextEditingController>[];
  var ageTECs = <TextEditingController>[];
  var jobTECs = <TextEditingController>[];
  var cards = <Card>[];

  Card createCard() {
    var nameController = TextEditingController();
    var ageController = TextEditingController();
    var jobController = TextEditingController();
    nameTECs.add(nameController);
    ageTECs.add(ageController);
    jobTECs.add(jobController);
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text('Requierment'),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: ''),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.orange, fontSize: 22),
                        ),
                        onTap: () {
                          _increment();
                        },
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      GestureDetector(
                          onTap: () {
                            _decrement();
                          },
                          child: Text(
                            '-',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 22),
                          )),
                    ],
                  )),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 1,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(fontSize: 10),
                              ));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    cards.add(createCard());
  }

  _onDone() {
    List<PersonEntry> entries = [];
    for (int i = 0; i < cards.length; i++) {
      var name = nameTECs[i].text;
      var age = ageTECs[i].text;
      var job = jobTECs[i].text;
      entries.add(PersonEntry(name, age, job));
    }
    Navigator.pop(context, entries);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Row(
            children: [
              const Center(
                child: Text(
                  "Dubai",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.orange,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {}),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'ISSUE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontSize: 25),
                    ),
                    Align(alignment: Alignment.topLeft, child: Text('Problem')),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft, child: Text('Location')),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Description')),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(alignment: Alignment.topLeft, child: Text('Images')),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                                color: Colors.orange,
                              ),
                              onPressed: () {},
                            )),
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                                color: Colors.orange,
                              ),
                              onPressed: () {},
                            )),
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                                color: Colors.orange,
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                                color: Colors.orange,
                              ),
                              onPressed: () {},
                            )),
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                                color: Colors.orange,
                              ),
                              onPressed: () {},
                            )),
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                                color: Colors.orange,
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SOLUTION',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft, child: Text('Solution')),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Description')),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        decoration: InputDecoration.collapsed(hintText: ''),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Number of Volunteer',
                          style: TextStyle(fontSize: 16, color: Colors.orange),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('No Limit'),
                                    Checkbox(
                                        value: this._ischecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _ischecked = value!;
                                          });
                                        })
                                  ],
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 22),
                                      ),
                                      onTap: () {
                                        _increment();
                                      },
                                    ),
                                    Text(
                                      '$_counter',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          _decrement();
                                        },
                                        child: Text(
                                          '-',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 22),
                                        )),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'REQUIREMENTS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: cards.length,
                            itemBuilder: (BuildContext context, int index) {
                              return cards[index];
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: RaisedButton(
                            child: Text('add new'),
                            onPressed: () =>
                                setState(() => cards.add(createCard())),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class PersonEntry {
  final String name;
  final String age;
  final String studyJob;

  PersonEntry(this.name, this.age, this.studyJob);
  @override
  String toString() {
    return 'Person: name= $name, age= $age, study job= $studyJob';
  }
}
