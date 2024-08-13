import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
// ...
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      debugShowCheckedModeBanner: false,
      home: Myapp()));

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class Myapp extends StatefulWidget {
  @override
  createState() => _Myapp();
}

class _Myapp extends State {
  List<String> student = ["ahmed", "ali"];
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List"),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: TextField(
                // onChanged: (value) {
                //   setState(() {});
                //   student.add(value);
                // },
                // onSubmitted: (value) {
                //   setState(() {});
                //   if (value.isNotEmpty) student.add(value);
                // },

                controller: _name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person, color: Colors.white),
                    prefixIcon: Icon(
                      Icons.save,
                      color: Colors.white,
                    ),

                    //labelText: "Name",
                    fillColor: Color.fromARGB(255, 16, 72, 144),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "input Name",
                    label: Text("Name"),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
                if (_name.text.isNotEmpty && !student.contains(_name.text))
                  student.add(_name.text);
                // _name.clear();
                //  _name.text = "";
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: student.length,
                itemBuilder: (context, i) {
                  return Container(
                      //margin: EdgeInsets.only(left: 50, right: 50),
                      padding: EdgeInsets.only(top: 2),
                      height: 100,
                      width: 100,
                      child: ListTile(
                        onTap: () {
                          _name.text = student[i];
                        },
                        trailing: IconButton(
                            onPressed: () {
                              student.removeAt(i);
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                        leading: IconButton(
                            onPressed: () {
                              setState(() {});
                              student[i] = _name.text;
                              _name.clear();
                            },
                            icon: Icon(
                              Icons.update,
                              color: Colors.white,
                            )),
                        title: Text(
                          student[i],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        tileColor: Color.fromARGB(255, 30, 120, 161),
                      ));
                },
              ),
            )
          ],
        ));
  }
}
