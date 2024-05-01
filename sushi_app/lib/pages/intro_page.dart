import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 44, 37),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // shop name
              Text(
                'sushi man'.toUpperCase(),
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              // icon
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/onigiri.png'),
              ),
              // title
              Text(
                'the taste of japanese food'.toUpperCase(),
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
              // subtitle
              Text(
                'Feel the taste of the most popular Japanese food from anywhere and anytime',
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // get started button
              MyButton(
                text: 'Get Started',
                // go to menu page
                onTap: () => {
                  Navigator.pushNamed(context, '/menupage'),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
