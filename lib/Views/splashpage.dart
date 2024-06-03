import 'package:dictionary_app/Views/home_page.dart';
import 'package:dictionary_app/Views/privacy_policy_page.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:dictionary_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySplashPage extends StatelessWidget {
  const MySplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: nameApp,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Expanded(
                child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/pngbook.png",
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Liste des Expressions",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PrivacyPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.privacy_tip_sharp,
                          size: 50,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Privacy \n Policy",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: backColorButtom,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25.0)),
                        ),
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 38, 54, 44),
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Add optional rounded corners
                                  ),
                                  child: const Icon(
                                    Icons.android,
                                    size: 50,
                                    color: Color.fromARGB(255, 49, 226, 131),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  "com.Fautes.orthographee2018",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Select an app market from which to download this app.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: ecritureButtom),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              backColor2Buttom)),
                                  onPressed: () {
                                    _launchURL(Uri.parse(linkApp));
                                  },
                                  child: const Text('Google Play',
                                      style: TextStyle(color: ecritureButtom)),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              backColor2Buttom)),
                                  onPressed: () {
                                    _launchURL(Uri.parse(linkApp));
                                  },
                                  child: const Text('GetApps',
                                      style: TextStyle(color: ecritureButtom)),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/otherapp.png",
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Découvrez notre applicationfautes d \n orthographe courantes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
