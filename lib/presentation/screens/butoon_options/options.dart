import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyect_super_giros/presentation/screens/send/send.dart';

class ButoonOptionsScreen extends StatelessWidget {
  static const paht ='/ButoonOptionsScreen';
  static const name ='ButoonOptionsScreen';
  const ButoonOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 87, 206, 156)
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Super',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.13,
                    color: Colors.white.withOpacity(0.3),
                    fontWeight: FontWeight.bold,
                  ),
                ),              
                Text(
                  'Giros',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.13,
                    color: const Color.fromARGB(255, 0, 71, 12).withOpacity(0.2),
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
              ],
            ),
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> SendScreen()
                      )
                    );
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 61, 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Enviar',
                    style: GoogleFonts.arvo(
                      fontSize: letterSize * 0.030,
                      color: Colors.white
                    ),)
                ),
                SizedBox(height: smallSpacing,),
                ElevatedButton(
                  onPressed: (){
                    /*Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=> ButoonOptionsScreen()
                      )
                    );*/
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 61, 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Enviados',
                    style: GoogleFonts.arvo(
                      fontSize: letterSize * 0.030,
                      color: Colors.white
                    ),)
                ),
                ElevatedButton(
                  onPressed: (){
                    /*Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=> ButoonOptionsScreen()
                      )
                    );*/
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 61, 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Recibidos',
                    style: GoogleFonts.arvo(
                      fontSize: letterSize * 0.030,
                      color: Colors.white
                    ),)
                ),
                ElevatedButton(
                  onPressed: (){
                    /*Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context)=> ButoonOptionsScreen()
                      )
                    );*/
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 61, 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Todos',
                    style: GoogleFonts.arvo(
                      fontSize: letterSize * 0.030,
                      color: Colors.white
                    ),)
                ),
              ],
            )
          )                
        ],
      ),
    );
  }
}