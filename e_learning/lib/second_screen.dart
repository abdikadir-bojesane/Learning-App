import 'package:e_learning/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SecondScreen(),
    ),
  );
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_sharp),
        title: Text(
          'LOG IN',
          style: TextStyle(color: Colors.purple[700]),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Learning App',
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 2,
              color: Colors.purple[700],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Enter Your Log Details to Access Your Account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.purple[300],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 22,
                  //right: 22,
                ),
                height: 55,
                child: Expanded(
                  //flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(
                  // left: 22,
                  right: 22,
                ),
                height: 55,
                child: Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.g_mobiledata_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            child: TextField(
              decoration: InputDecoration(
                  label: Text('E-mail'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            child: TextField(
              decoration: InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_box_outline_blank),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Remember Me?',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Text(
                'Forget Password?',
                style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            height: 65,
            child: Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(left: 30),
                  backgroundColor: Colors.lightBlue,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => third_screen()));
                },
                child: const Row(
                  children: [
                    Text(
                      'Log in with your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.purple[700],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Create account',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue[700],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
