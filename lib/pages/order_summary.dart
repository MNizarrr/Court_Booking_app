import 'package:court_booking/pages/choose_payment.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Summary",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 480,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Basketball Court A",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Indoor || Air Conditioned",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Icon(Icons.date_range_outlined),
                          SizedBox(width: 4),
                          Text(
                            "Date",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Today, Dec 22",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(color: Colors.black, height: 2),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Icon(Icons.hourglass_bottom_outlined),
                          SizedBox(width: 4),

                          Text(
                            "Duration",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "2 Hour",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(color: Colors.black, height: 2),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Icon(Icons.sell_outlined),
                          SizedBox(width: 4),
                          
                          Text(
                            "Price per Hour",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rp. 50.000",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Text(
                            "Subtotal (2 hours)",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rp. 50.000",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Text(
                            "Service Fee",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rp. 5.000",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      Row(
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rp. 105.000",
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade100,
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Icon(Icons.info, color: Colors.black87)],
                    ),

                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Policy",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("bla bli blu ble blo bang udah bang hehe blaw"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            CustomButton(
              textButton: "Choose Payment Method",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChoosePayment()),
                );
              },
              fontSize: 16,
              heightButton: 60,
              widthButton: 100,
            ),
          ],
        ),
      ),
    );
  }
}
