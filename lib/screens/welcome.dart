import 'package:coffee_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Coffee shop',
                style: GoogleFonts.pacifico(
                  fontSize: 50,
                  color: Colors.white,
                )),
            Column(
              children: [
                Text(
                  'feeling Low? take a sip of coffee',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 80,
                ),
                Material( 
                    color: const Color(0xFFE57734),
                        borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 50,
                      ),
                      child: const Text(
                        'Get Start',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
