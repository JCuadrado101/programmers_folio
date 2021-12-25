import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCards extends StatelessWidget {
  final IconData? icon;
  final Color? backgroundColor;
  final String? serviceTitle;
  final String? serviceDescription;
  const ServiceCards({
    Key? key,
    required this.icon,
    required this.backgroundColor,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Card(
        elevation: 10,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: backgroundColor,
                radius: 30,
                child: Icon(
                  icon,
                  size: 50,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    serviceTitle!,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      serviceDescription!,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
