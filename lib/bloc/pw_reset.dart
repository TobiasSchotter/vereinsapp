import 'package:vereinsapp/bloc/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Reset());
}

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.blue, Colors.blueAccent])),
          child: SingleChildScrollView(
              child: Column(children: [
            const SizedBox(
              height: 80,
            ), // 1

            const Text('Reset',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)), // Text Login

            const SizedBox(
              height: 10,
            ), // 2

            const SizedBox(
              height: 10,
            ), // 3

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),

              height: 90,

//decoration: BoxDecoration(

              //      border: Border.all(color: Colors.white60),

//borderRadius: BorderRadius.circular(30).copyWith(

//bottomRight: Radius.circular(30),

//topLeft: Radius.circular(30))),

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30)
                          .copyWith(bottom: 10),
                      child: TextField(
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14.5),
                        decoration: InputDecoration(
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 45),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.white70,
                              size: 22,
                            ),
                            border: InputBorder.none,
                            hintText: 'E-Mail eingeben',
                            hintStyle: const TextStyle(
                                color: Colors.white60, fontSize: 14.5),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                                    .copyWith(
                                        bottomRight: const Radius.circular(0),
                                        topLeft: const Radius.circular(0)),
                                borderSide:
                                    const BorderSide(color: Colors.white38)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                                    .copyWith(
                                        bottomRight: const Radius.circular(0),
                                        topLeft: const Radius.circular(0)),
                                borderSide:
                                    const BorderSide(color: Colors.white70))),
                      ),
                    ),
                  ]),
            ),

            GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const Login())

                showAlertDialog(context);
                ;
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60),
                  borderRadius: BorderRadius.circular(30).copyWith(
                      bottomRight: const Radius.circular(30),
                      topLeft: const Radius.circular(30)),
                ),
                child: const Text('Passwort zurücksetzten',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            const SizedBox(
              height: 230,
            ),

            const Text('Du hast bereits ein Benutzerkonto?',
                style: TextStyle(color: Colors.white70, fontSize: 13)),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Container(
                height: 53,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 90),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60),
                  borderRadius: BorderRadius.circular(60).copyWith(
                      bottomRight: const Radius.circular(60),
                      topLeft: const Radius.circular(60)),
                ),
                child: const Text('Anmelden',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ])),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  //Widget okButton = TextButton(
  //child: Text("OK"),
  // onPressed:  () {
  //Navigator.of(context).pop(); // dismiss dialog
  //},

  //);

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Passwort zurückgesetzt"),
    content: Text("In Ihrer Mail blablabla"),
    actions: [
      //  okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
