import 'package:e_learning/fourth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: third_screen(),
    ),
  );
}

class third_screen extends StatefulWidget {
  const third_screen({super.key});

  @override
  State<third_screen> createState() => _third_screenState();
}

class _third_screenState extends State<third_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_sharp),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Learning App',
              style: TextStyle(
                fontSize: 25,
                color: Colors.purple[900],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Image(
              image: AssetImage('images/Pic2.png'),
              height: 350,
            ),
            Container(
              margin: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Select Your Course level',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple[500],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                    padding:
                        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    side: const BorderSide(color: Colors.purple),
                  ),
                  child: const Text(
                    'Beginner',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                    padding:
                        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    side: const BorderSide(color: Colors.purple),
                  ),
                  child: const Text('Intermediate'),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                    padding:
                        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    side: const BorderSide(color: Colors.purple),
                  ),
                  child: Text('Expert'),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  const Icon(Icons.check_box_outline_blank_sharp),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Are You Sure?',
                    style: TextStyle(
                      color: Colors.purple[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple[900],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FourthScreen()));
                      },
                      child: const Text(
                        'continue',
                        style: TextStyle(
                          fontSize: 25,
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
