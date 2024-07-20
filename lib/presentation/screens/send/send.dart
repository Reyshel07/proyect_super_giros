import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SendScreen extends StatefulWidget {
  static const name = 'SendScreen';
  static const path = '/SendScreen';

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  String? SelectedOption1;
  String? SelectedOption2;
  String? SelectedOption3;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02; // Espaciado pequeño
    final double mediumSpacing = screenSize.height * 0.03; // Espaciado medio
    final double largeSpacing = screenSize.height * 0.04; // Espaciado grande
    final double letterSize = screenSize.height * 0.02; 
    
    final List<String> option1 =['mapiri'];
    final List<String> option2 = ['La Paz','Caranavi'];
    final List<String> option3 = ['Tigo Money','Banco Eco','Banco Bisa'];

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
              color: Color.fromARGB(255, 87, 206, 156),
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
                    fontSize: letterSize * 7.2,
                    color: Colors.white.withOpacity(0.3),
                    fontWeight: FontWeight.bold,
                  ),
                ),              
                Text(
                  'Giros',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 7.2,
                    color: const Color.fromARGB(255, 0, 71, 12).withOpacity(0.2),
                    fontWeight: FontWeight.bold,
                  ),
                ),               
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(mediumSpacing),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gui de Giros',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: smallSpacing * 3), // Ajuste de SizedBox
                    Text(
                      'Bs.',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: smallSpacing),
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
                          hintText: 'Bs',
                          hintStyle: TextStyle(
                            fontSize: letterSize * 0.75, // Tamaño de fuente para el hintText
                            color: const Color.fromARGB(136, 102, 100, 100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: smallSpacing *0.5), // Ajuste de SizedBox
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: smallSpacing * 7,
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
                          hintText: 'Guia',
                          hintStyle: TextStyle(
                            fontSize: letterSize * 0.75, // Tamaño de fuente para el hintText
                            color: const Color.fromARGB(136, 102, 100, 100),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: smallSpacing * 3),
                    Text(
                      'Imp.',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: smallSpacing),
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
                          hintText: 'Importe',
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
                Row(
                  children: [
                    Text(
                      'Recibido  en:',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: smallSpacing),
                    Container(
                      height: screenSize.height * 0.04,
                      width: screenSize.width * 0.28,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 73, 4), // Color de fondo verde
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: const Color.fromARGB(255, 4, 90, 7)), // Borde verde
                      ),
                      child: DropdownButton<String>(
                        hint: Text(
                          'Recivido*',
                          style: TextStyle(color: Colors.white),
                        ),                        
                        value: SelectedOption1,
                        onChanged: (String? newValue) {
                          setState(() {
                            SelectedOption1 = newValue;
                          });
                        },
                        items: option1.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.white),),
                          );
                        }).toList(),
                        underline: SizedBox(),
                        dropdownColor: const Color.fromARGB(255, 4, 82, 6), 
                      ),
                    ),
                  ],
                ),
                SizedBox(height: smallSpacing), // Ajuste de SizedBox
                Row(
                  children: [
                    Text(
                      'Destino:',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: smallSpacing * 3),
                    Container(
                      height: screenSize.height * 0.04,
                      width: screenSize.width * 0.28,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 73, 4), // Color de fondo verde
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: const Color.fromARGB(255, 4, 90, 7)), // Borde verde
                      ),
                      child: DropdownButton<String>(
                        hint: Text(
                          'Destino*',
                          style: TextStyle(color: Colors.white),),                       
                        value: SelectedOption2,
                        onChanged: (String? newValue) {
                          setState(() {
                            SelectedOption2 = newValue;
                          });
                        },
                        items: option2.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.white),),
                          );
                        }).toList(),
                        underline: SizedBox(),
                        dropdownColor: const Color.fromARGB(255, 4, 82, 6), 
                      ),
                    ),
                  ],
                ),
                SizedBox(height: smallSpacing), // Ajuste de SizedBox
                Text(
                  'Remitente:',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.75,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: smallSpacing),
                TextFormField(
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
                    hintText: 'Remitente',
                    hintStyle: TextStyle(
                      fontSize: letterSize * 0.75, // Tamaño de fuente para el hintText
                      color: const Color.fromARGB(136, 102, 100, 100),
                    ),
                  ),
                ),
                SizedBox(height: smallSpacing), // Ajuste de SizedBox
                Text(
                  'Consignatario:',
                  style: GoogleFonts.arvo(
                    fontSize: letterSize * 0.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: smallSpacing),
                TextFormField(
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
                    hintText: 'Consignatario',
                    hintStyle: TextStyle(
                      fontSize: letterSize * 0.9, // Tamaño de fuente para el hintText
                      color: const Color.fromARGB(136, 102, 100, 100),
                    ),
                  ),
                ),
                SizedBox(height: smallSpacing),
                Row(
                  children: [
                    Text(
                      'Para:',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 0.75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: smallSpacing,),
                    Container(
                      height: screenSize.height * 0.04,
                      width: screenSize.width * 0.28,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 73, 4), // Color de fondo verde
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: const Color.fromARGB(255, 4, 90, 7)), // Borde verde
                      ),
                      child: DropdownButton<String>(
                        hint: Text(
                          'Para*',
                          style: TextStyle(color: Colors.white), // Texto blanco
                        ),
                        value: SelectedOption3,
                        onChanged: (String? newValue) {
                          setState(() {
                            SelectedOption3 = newValue;
                          });
                        },
                        items: option3.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.white), // Texto blanco
                            ),
                          );
                        }).toList(),
                        underline: SizedBox(),
                        dropdownColor: const Color.fromARGB(255, 4, 82, 6), // Fondo del menú desplegable
                      ),
                    ),
                  ],
                ),
                SizedBox(height: smallSpacing),
                TextFormField(
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
                    hintText: 'Para',
                    hintStyle: TextStyle(
                      fontSize: letterSize * 0.9, // Tamaño de fuente para el hintText
                      color: const Color.fromARGB(136, 102, 100, 100),
                    ),
                  ),
                ),
                SizedBox(height: smallSpacing),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 61, 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Enviar',
                      style: GoogleFonts.arvo(
                        fontSize: letterSize * 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),                           
              ],
            ),
          ),
        ],
      ),
    );
  }
}
