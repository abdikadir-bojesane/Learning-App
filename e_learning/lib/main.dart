import 'package:e_learning/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: home(),
    ),
  );
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Image(
              image: AssetImage('images/Pic1.png'),
            ),
            Text(
              'Online learning platform',
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                // width: double.infinity,
                child: Text(
                  'lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // SizedBox(
            //   height: 8,
            // ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                      },
                      child: const Text(
                        'Start learning',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
