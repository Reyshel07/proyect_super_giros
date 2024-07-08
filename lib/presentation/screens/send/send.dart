import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendScreen extends StatelessWidget {
  static const paht = '/SendScreen';
  static const name = 'SendScreen';
  const SendScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;
    return Scaffold(
      body: Stack(
        children: [         
          Padding(padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Gui de Giros',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.018,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Bs.',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.018,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const  BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Usuario',
                        hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                          color: const Color.fromARGB(136, 102, 100, 100)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    TextFormField(
                      decoration:  InputDecoration(
                        fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: const  Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const  BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Usuario',
                        hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                          color: const Color.fromARGB(136, 102, 100, 100)),
                      ),
                    ),
                    Text(
                      'Imp.',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.018,
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: const  Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const  BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Usuario',
                        hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                          color: const Color.fromARGB(136, 102, 100, 100)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Recibidos en:',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.018,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(color: const  Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Usuario',
                        hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                          color: const Color.fromARGB(136, 102, 100, 100)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Destino:',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.018,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const  BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Usuario',
                        hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                          color: const Color.fromARGB(136, 102, 100, 100)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: smallSpacing,),
                Text(
                  'Remitente:',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.018,
                    fontWeight: FontWeight.bold ),
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(color: const  Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Usuario',
                    hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                      color: const Color.fromARGB(136, 102, 100, 100)),
                  ),
                ),
                Text(
                  'Consignatario:',
                  style: GoogleFonts.arvo( 
                    fontSize: letterSize * 0.018,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: const  Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Usuario',
                    hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                      color: const Color.fromARGB(136, 102, 100, 100)),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Para:',
                      style: GoogleFonts.arvo( 
                        fontSize: letterSize * 0.018,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        fillColor: const  Color(0xFFD9D9D9).withOpacity(0.7),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(color: const  Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  BorderSide(color: const Color(0xFFD9D9D9).withOpacity(0.7)),  // Borde de color #D9D9D9 al enfocar
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const  BorderSide(color: Color(0xFFD9D9D9)),  // Borde de color #D9D9D9 cuando está habilitado
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Usuario',
                        hintStyle:  TextStyle(fontSize: letterSize * 0.020,
                          color: const Color.fromARGB(136, 102, 100, 100)),
                      ),
                    )
                  ],
                ),
                TextFormField(

                ),
                ElevatedButton(
                  onPressed: (){

                  }, 
                  child: Text(
                    'Enviar',
                    style: GoogleFonts.arvo(
                      fontSize: letterSize * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}