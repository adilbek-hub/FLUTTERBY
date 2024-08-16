import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          SizedBox(
            height: 300,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              child: const Column(
                children: [
                  Text(
                    'Мобилдик тиркеме тууралуу',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '"Билим Ал тиркемеси" тиркемедеги маалыматтар менен таанышып жана алган маалыматтын негизинде тесттен өтүү камсыздалган.Урматтуу окурманым, сизде кандайдыр бир суроо талаптарыңыз болсо төмөндөгү платформалардын бири аркылуу тирмемени түзгөн програмисстин өзүнө кайрыла аласыз.',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                const Icon(Icons.book_outlined),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'booksView'),
                    child: const Text('Китептер коллекциясы')),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            title: Row(
              children: [
                const Icon(Icons.facebook),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.facebook.com/profile.php?id=61555005551137&mibextid=ZbWKwL')),
                  child: const Text('facebook'),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                const Icon(Icons.blur_circular),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () =>
                      launchUrl(Uri.parse('https://wa.me/qr/WX5LHJD2GIXCC1')),
                  child: const Text('WhatsApp'),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                const Icon(Icons.telegram),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () => launchUrl(Uri.parse('https://t.me/Adil_gramm')),
                  child: const Text('telegram'),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
