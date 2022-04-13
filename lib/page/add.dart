import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['Male', 'Female', 'Other'];
  final status = ['Active', 'Inactive'];
  String? value;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  String? validatepass(value) {
    if (value.isEmpty) {
      return "required";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Add New User"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Name"),
                      validator: validatepass),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Age"),
                        validator: validatepass),
                  ),
                  Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      width: 1000,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: value,
                          isExpanded: true,
                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: RaisedButton(
                      onPressed: validate,
                      child: Text("Submit"),
                      hoverElevation: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: '$item',
        child: Text(
          '$item',
          style: const TextStyle(fontSize: 15),
        ),
      );
}
