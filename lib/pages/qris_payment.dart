import 'package:court_booking/pages/booking_confirmation.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QrisPayment extends StatelessWidget {
  const QrisPayment({super.key});

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
              SizedBox(height: 20),
              Text(
                "Payment Amount",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. 125.000",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),

              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200,
                ),
                child: Icon(Icons.qr_code_2, size: 190),
              ),

              SizedBox(height: 20),

              Text(
                "Scan To Pay",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),

              Text("Bla Bli Blau Blew Blow Blak Blok"),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Text(
                  "lorem ipsum doler si jamet lorem ipsum doler sit amet lorem ipsum doler sit amet lorem ipsum doler sit amet",
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height:60),

              CustomButton(
                textButton: "I Have Paid",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingConfirmation(),
                    ),
                  );
                },
              ),

              SizedBox(height: 30,),

              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.ios_share_outlined, color: Colors.grey, size: 16,),
                    SizedBox(width: 4,),
                    Text("Share", style: GoogleFonts.poppins(color: Colors.grey),),
                    SizedBox(width: 30),
                    Icon(Icons.save_alt, color: Colors.grey, size: 16,),
                    SizedBox(width: 4,),
                    Text("Save", style: GoogleFonts.poppins(color: Colors.grey),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
