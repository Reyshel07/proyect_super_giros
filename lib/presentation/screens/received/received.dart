import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceivedScreen extends StatelessWidget {
  static const path = '/ReceivedScreen';
  static const name = 'ResceivedScreen';
  const ReceivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 206, 156),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 1, 68, 5),
          ),
        ),
      ),
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recibidos',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.020,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: smallSpacing * 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Monto Total:',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.020,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(width: smallSpacing,),
                    SizedBox(
                      width: smallSpacing * 7,
                      height: smallSpacing * 2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFD9D9D9).withOpacity(0.7),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color(0xFFD9D9D9).withOpacity(0.7),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xFFD9D9D9).withOpacity(0.7),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Monto total',
                          hintStyle: TextStyle(
                            fontSize: letterSize * 0.75, // Tamaño de fuente para el hintText
                            color: const Color.fromARGB(136, 102, 100, 100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: smallSpacing),
                Expanded(
                  child:ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return 
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: CustomPaint(
                          child: Container(
                            height: smallSpacing * 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Monto Total:',
                                  style: GoogleFonts.arvo(
                                    fontSize: letterSize * 0.020,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  'Monto Total:',
                                  style: GoogleFonts.arvo(
                                    fontSize: letterSize * 0.020,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  'Monto Total:',
                                  style: GoogleFonts.arvo(
                                    fontSize: letterSize * 0.020,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                          ), 
                        ),
                      );
                    },
                  ), 
                )
              ],
            ),
          ),
        ]
      )
    );
  }
}