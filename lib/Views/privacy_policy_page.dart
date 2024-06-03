import 'package:dictionary_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(
          255,
          26,
          26,
          26,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Color.fromARGB(255, 76, 127, 159),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Last updated: 19/09/2023',
                style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                ' ssiomos is committed to providing fun and exciting digital entertainment across all its applications available on various devices such as Smartphones, and tablets . ssiomos respects the privacy concerns of all users Thus, we at ssiomos have created this Privacy Policy to demonstrate our commitment to your privacy. The following reveals our information gathering and dissemination practices. By accessing and or using ssiomos applications you are accepting the practices described in this privacy policy. We want our users to always be aware of any information we collect, how we use it, and under what circumstances, if any, we disclose it.',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              Text(
                'What information we use and how we use it:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextWidget(
                  title: "• Read phone status and identity",
                  texto:
                      "This permission allows ssiomos Apps to recognize an incoming/outgoing call and to switch between the User System interface and call interface or announces/shows the caller name while some one is calling, you will identify it without looking to your smart phone"),
              TextWidget(
                  title: "• Read your text messages (SMS or MMS)",
                  texto:
                      "We do not save or upload your messages. We use this permission to read your text messages when you search messages or announce the sender name while some one is send you a message, you will identify it without looking to your smart phone."),
              TextWidget(
                  title: "• Take pictures and videos",
                  texto:
                      "This permission allows ssiomos Apps to use your device’s camera to take photos / videos and turn ON/OFF Camera Flash. We do not save or upload your photos/videos. "),
              TextWidget(
                  title: "• Approximate location (network-based)",
                  texto:
                      "This permission allows ssiomos Apps to identify and display your location on map or apps installed by anonymous surrounding users and to recommend popular apps based on users’ location. This information is untraceable."),
              TextWidget(
                  title: "• Read your contacts",
                  texto:
                      "ssiomos Apps does not save or upload your contacts. Permission to access contact information is used when you search contacts in ssiomos Apps search bar."),
              TextWidget(
                  title: "• Read calendar events plus confidential information",
                  texto:
                      " This information is used only in the ssiomos Apps to remind you of your latest calendar events. We do not save or upload any of your calendar information."),
              TextWidget(
                  title: "• Modify or delete the contents of your USB storage",
                  texto:
                      "  This permission allows ssiomos Apps to delete app data (image, text, audio etc..) stored on their SD card."),
              TextWidget(
                  title: "• Read the contents of your USB storage",
                  texto:
                      " This permission allows ssiomos Apps to view app data (image, text, audio etc..) stored on their SD card."),
              TextWidget(
                  title: "• Set an alarm",
                  texto:
                      " This permission allows users to access the device's alarm through ssiomos Apps clock widget."),
              TextWidget(
                  title: "• Find accounts on the devices",
                  texto:
                      "ssiomos Apps does not recognize or save your account information for any programs. ssiomos Apps only detects whether users have a Google account linked with the device which helps us confirm the state of Google Service and provide users with appropriate application download and update methods."),
              TextWidget(
                  title: "• Read Google service configuration",
                  texto:
                      " This information is used to acquire advertising ID. ssiomos Apps provide users with better advertising service by using such anonymous ID."),
              TextWidget(
                  title: "• Change network connectivity",
                  texto:
                      "This permission is used in ssiomos Apps settings and notification toolbar, in order to change/check network connectivity."),
              TextWidget(
                  title: "• Connect and disconnect from Wi-Fi",
                  texto:
                      "This permission is used in ssiomos Apps settings and notification toolbar in order to connect and disconnect from Wi-Fi."),
              TextWidget(
                  title: "• Full network access",
                  texto:
                      "This permission is used to access the device’s network for certain functions including receiving update notifications or accessing app classification labels."),
              TextWidget(
                  title: "• View network connections",
                  texto:
                      "This permission is used in ssiomos Apps settings and notification toolbar, in order to view network connections."),
              TextWidget(
                  title: "• View Wi-Fi connections",
                  texto:
                      "This permission is used in ssiomos Apps settings and notification toolbar, in order to view Wi-Fi connections."),
              TextWidget(
                  title: "• Pair with Bluetooth devices",
                  texto:
                      "This permission is used in ssiomos Apps settings, in order to pair with Bluetooth devices."),
              TextWidget(
                  title: "• Close other apps",
                  texto:
                      "This permission is used in ssiomos Apps Boost in order to turn off the back-end apps and make the phone run faster."),
              TextWidget(
                  title: "• Retrieve running apps",
                  texto:
                      "This permission is used in ssiomos Apps Boost in order to view the running apps."),
              TextWidget(
                  title: "• Run as startup",
                  texto:
                      "This permission is used in ssiomos Apps Boost in order to view the running apps."),
              TextWidget(
                  title: "• Draw over other apps",
                  texto:
                      "This permission allows the ssiomos Apps Free Swipe tab to be displayed as a floating window on other apps."),
              TextWidget(
                  title: "• Control vibration",
                  texto:
                      "This permission allows ssiomos Apps to make the phone vibrate once after users set the device on vibrate, confirming the setting has been turned on."),
              TextWidget(
                  title: "• Adjust your wallpaper size",
                  texto:
                      "This permission allows users to crop ssiomos Apps wallpaper to the desired size."),
              TextWidget(
                  title: "• Set wallpaper",
                  texto:
                      "This permission allows users to set a selected ssiomos Apps image as their wallpaper."),
              TextWidget(
                  title: "• Read sync settings",
                  texto:
                      "This permission is used in ssiomos Apps power’s save mode, and allows ssiomos Apps to recognize whether sync settings are turned on or off."),
              TextWidget(
                  title: "• Toggle sync on and off",
                  texto:
                      "This permission is used in ssiomos Apps power’s save mode, and allows ssiomos Apps to synchronize with the user's sync settings."),
              TextWidget(
                  title: "• Expand/collapse status bar",
                  texto:
                      "This permission is used for the gesture feature of ssiomos Apps User System to expand and collapse the status bar."),
              TextWidget(
                  title: "• Install shortcuts",
                  texto:
                      "This permission is used to install shortcuts on other launchers, so users can continue to use ssiomos Apps related functions."),
              TextWidget(
                  title: "• Measure app storage space",
                  texto:
                      "This permission is used to acquire the amount of storage space used by an application."),
              TextWidget(
                  title: "• Modify system settings",
                  texto:
                      "This permission is used in ssiomos Apps settings, in order to switch or adjust ringtone, vibration and brightness level of the screen."),
              TextWidget(
                  title: "• Read Home settings and shortcuts",
                  texto:
                      "This permission is used to install shortcuts on other launchers, so users can continue to use ssiomos Apps related functions."),
              TextWidget(
                  title: "• Uninstall shortcuts",
                  texto:
                      "This permission allows ssiomos Apps to delete the shortcuts created by ssiomos Apps in other Android launchers."),
              TextWidget(
                  title: "• Photos/Media/Files",
                  texto:
                      "Modify or delete the contents of your USB storage. Test access to protected storage. When user recommends friends to download ssiomos Apps by sharing to social network, we need to save an introduction picture to be shared on SD card. We won’t access other files on SD card."),
              SizedBox(
                height: 20,
              ),
              Text(
                'Information Collection and Use',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited . The information that I request is retained on your device and is not collected by me in any way The app does use third party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app",
                style: TextStyle(fontSize: 12),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "• Google Play Services\n • AdMob",
                  style: TextStyle(
                      color: Color.fromARGB(255, 124, 98, 181), fontSize: 14),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Log Data',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Cookies',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "  Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory. This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'How we protect your information',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "  We have implemented commercially reasonable technical and organizational measures to protect your personal information from accidental loss and from loss, misuse and unauthorized access, disclosure, alteration and destruction. However, please note that although we take reasonable measures to protect your information, no app, website, Internet transmission, computer system or wireless connection is completely secure.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Security',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "  I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),

              /////
              Text(
                ' Children\'s Privacy',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                '  Contact us',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " If you have any suggestions, feedback or requests, please contact us by writing an E-Mail at allassimo80gmail.com",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
