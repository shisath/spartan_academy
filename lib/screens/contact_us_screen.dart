import 'package:flutter/material.dart';
import 'package:spartan_academy/widgets/contact_us_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/ContactUs_Screen_Background.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact us for more enquery',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 800,
                child: Text(
                    'Explore our class schedules, upcoming events, and testimonials '
                    'from our students. Transform your life with the power of Taekwondo '
                    'and embark on a path of continuous growth and success.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, height: 1.5)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                contactItemWidget(Icons.location_on, 'Address',
                    'No.2, Rainbow Street, Victory Nager, Nellithope, Puducherry - 605 005.'),
                contactItemWidget(
                    Icons.phone, 'Phone', '+91 95854 42524 / 87548 25748'),
                contactItemWidget(
                    Icons.email, 'Email', 'spartanacademy.py@gmail.com'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
