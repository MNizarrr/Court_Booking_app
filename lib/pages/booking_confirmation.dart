import 'package:court_booking/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingConfirmation extends StatelessWidget {
  final String paymentMethod;

  const BookingConfirmation({super.key, this.paymentMethod = 'QRIS Payment'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 48),
                      Center(
                        child: Container(
                          height: 96,
                          width: 96,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200,
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 56,
                            color: Color(0xFF4CAF63),
                          ),
                        ),
                      ),
                      const SizedBox(height: 36),
                      Text(
                        'Booking Successful',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF1D1B25),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Your court has been reserved successfully',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFF7474),
                        ),
                      ),
                      const SizedBox(height: 44),
                      _BookingDetailsCard(paymentMethod: paymentMethod),
                      const SizedBox(height: 44),
                      SizedBox(
                        height: 58,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Receipt downloaded'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            elevation: 4,
                            shadowColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Text(
                            'Download Receipt',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: SizedBox(
                          width: 178,
                          height: 44,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                                (route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 3,
                              shadowColor: Colors.black26,
                              shape: const StadiumBorder(),
                            ),
                            child: Text(
                              'Back to Home',
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BookingDetailsCard extends StatelessWidget {
  final String paymentMethod;

  const _BookingDetailsCard({required this.paymentMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 28),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Booking Details',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF20202A),
            ),
          ),
          const SizedBox(height: 20),
          const _DetailRow(label: 'Court name', value: 'Basketball Court A'),
          const SizedBox(height: 12),
          const _DetailRow(label: 'Date', value: 'April 29'),
          const SizedBox(height: 12),
          const _DetailRow(label: 'Duration', value: '2 hours'),
          const SizedBox(height: 12),
          _DetailRow(label: 'Payment Method', value: paymentMethod),
          const Divider(height: 40, thickness: 2.4, color: Color(0xFF202020)),
          const _DetailRow(
            label: 'Total Price',
            value: 'Rp 105.000',
            valueWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;
  final FontWeight valueWeight;

  const _DetailRow({
    required this.label,
    required this.value,
    this.valueWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: valueWeight,
              color: const Color(0xFF20202A),
            ),
          ),
        ),
      ],
    );
  }
}
