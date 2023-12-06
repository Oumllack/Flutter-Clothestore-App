import 'package:flutter/material.dart';
import 'delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'social_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Oumllack Hoodie.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black38,
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          children: [
            DelayedAnimation(
              delay: 3000,
              child: Container(
                height: 650,
                child: Image.asset('images/Logo Oumllack blanc.png'),
              ),
            ),
            DelayedAnimation(
              delay: 5000,
              child: Container(
                width: 265,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'GET STARTED',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SocialPage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
