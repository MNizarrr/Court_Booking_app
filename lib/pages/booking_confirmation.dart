import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "Qris Payment",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(15),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green.shade100
                  ),
                  child: Icon(Icons.check, size: 35,),
                ),
              ],
            ),
          ),
        ),
    );
  }
}