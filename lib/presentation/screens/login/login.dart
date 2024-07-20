import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyect_super_giros/presentation/screens/butoon_options/options.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'LoginScreen';
  static const path = '/LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -screenSize.width * 0.300, 
            left: -screenSize.width * 0.300, 
            child: CircleAvatar(
              radius: screenSize.width * 0.40,
              backgroundColor: Color.fromARGB(255, 74, 219, 122).withOpacity(0.5),
            ),
          ),
          Positioned(
            top: -screenSize.width * 0.500, 
            right: -screenSize.width * 0.26, 
            child: CircleAvatar(
              radius: screenSize.width * 0.4,
              backgroundColor: Color.fromARGB(255, 2, 128, 55).withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.9,
            right:   screenSize.width * 0.4,
            child: CircleAvatar(
              radius: screenSize.width * 0.50,
              backgroundColor: Color.fromARGB(255, 2, 128, 55).withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.75,
            left:  screenSize.width * 0.5,
            child: CircleAvatar(
              radius: screenSize.width * 0.50,
              backgroundColor: Color.fromARGB(255, 74, 219, 122).withOpacity(0.5),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Super',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.13,
                    color: Color.fromARGB(255, 8, 173, 8).withOpacity(0.3),
                    fontWeight: FontWeight.bold,
                  ),
                ),              
                Text(
                  'Giros',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.13,
                    color: Color.fromARGB(255, 8, 173, 8).withOpacity(0.3),
                    fontWeight: FontWeight.bold,
                  ),
                ),                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SUPER',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.050,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: smallSpacing * 0),
                Text(
                  'GIROS',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.050,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 61, 2),
                  ),
                ),
                SizedBox(height: smallSpacing),
                Text(
                  'INMEDIATOS',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.020,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: smallSpacing),
                Text(
                  'Usuario',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.018,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: smallSpacing),
                TextFormField(
                  decoration: InputDecoration(
                    //fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                    //filled: true,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF00C853)), // Green underline
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF00C853)), // Green underline when focused
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF00C853)), // Green underline when enabled
                    ),
                    hintText: 'Usuario',
                    hintStyle: TextStyle(
                      fontSize: letterSize * 0.020,
                      color: const Color.fromARGB(136, 102, 100, 100),
                    ),
                  ),
                ),
                SizedBox(height: smallSpacing),
                Text(
                  'Contraseña:',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.018,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: smallSpacing),
                TextFormField(
                  decoration: InputDecoration(
                    //fillColor: const Color(0xFFD9D9D9).withOpacity(0.7),
                    //filled: true,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF00C853)), // Green underline
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF00C853)), // Green underline when focused
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF00C853)), // Green underline when enabled
                    ),
                    hintText: 'Contraseña',
                    hintStyle: GoogleFonts.arvo(
                      fontSize: letterSize * 0.020,
                      color: const Color.fromARGB(136, 102, 100, 100),
                    ),
                  ),
                ),
                SizedBox(
                  height: smallSpacing,
                  width: screenSize.width * 0.9,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ButoonOptionsScreen(),
                        ),
                      );                     
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 61, 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Iniciar',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.030,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
