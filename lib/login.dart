import 'package:tugas/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

  bool pass = true;
   bool isChecked = false;
  bool isButtonEnabled = false;


class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
        child: Column(children: [
          const Text(
            'Login Now',
            style: TextStyle(
              fontFamily: 'IbarraRealNova-Regular',
              fontSize: 42,
              color: Color.fromRGBO(198, 124, 78, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
            SizedBox(height: 5),
                  Transform.translate(
                    offset: const Offset(10.0, 10.0),
                    child: Image.asset(
                      'assets/images/vvector.png',
                      width: 300,
                      height: 250,),
                  ),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'IbarraRealNova-Regular',
                  fontSize: 14,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(198, 124, 78, 1),
                ))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passwordController,
            obscureText: pass,
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'IbarraRealNova-Regular',
                  fontSize: 14,
                ),
                   suffixIcon: IconButton(
                  icon: pass ? const Icon(Icons.visibility_off_sharp,color: Color.fromRGBO(198, 124, 78, 1),)
                  : const Icon(Icons.visibility,color: Color.fromRGBO(198, 124, 78, 1),),
                  onPressed: () {
                    setState(() {
                      pass = !pass;
                    });
                  },
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(
                    0xfff1A5D1A,
                  ),
                ))),
          ),
          const SizedBox(
            height: 10,
          ),
           Container(
                    child: Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Color.fromRGBO(198, 124, 78, 1),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                              isButtonEnabled = isChecked;
                            });
                          },
                        ),
                        const Text(
                          'Saya Menyetujui Syarat Dan Ketentuan Yang Berlaku',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
          ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    backgroundColor: Color.fromRGBO(198, 124, 78, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(300, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
           SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Poppins', fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
        ]
        ),
      )
      ),
  );
 }
}