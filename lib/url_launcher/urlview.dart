import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Urlview extends StatefulWidget {
  const Urlview({super.key});

  @override
  State<Urlview> createState() => _UrlviewState();
}

class _UrlviewState extends State<Urlview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Portfolio",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/girl.png"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "DIYA SHAJITH K",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const Text(
              "Flutter Developer | Mobile App Enthusiast",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.15,
              child: Text(
                "Passionate Flutter developer with experience building sleek, high-performance mobile applications. Adept at translating design concepts into functional, user-friendly apps with clean code and efficient architectures. Always eager to explore new technologies and contribute to open-source projects.",
                style: TextStyle(
                    color: Colors.white.withOpacity(.6), fontSize: 18),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              color: Colors.deepPurple
                  .withOpacity(0.1), // Optional: Add a background color
              child: Container(
                width: size.width * 0.92,
                height: size.height * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Skills",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN2Ob42L45hStICYlml7RTjH9p4q0E89vc6Q&s"),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                "https://thumbs.dreamstime.com/b/blue-round-dbms-concept-vector-linear-line-icons-database-management-system-internet-technology-modern-online-services-106434877.jpg"),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVhBVOUPwt6wNBxSTW1ibAPL6oz9pxIkksfg&s"),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH9Ec8xfYs2F4PF2rt72I0qSp8u0kORFRnDQ&s"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              color: Colors.deepPurple
                  .withOpacity(0.1), // Optional: Add a background color
              child: Container(
                width: size.width * 0.92,
                height: size.height * 0.15,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Get in Touch",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () async {
                              const phonenumber = "+919567403045";
                              final url =
                                  Uri.parse("https://wa.me/$phonenumber");

                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw Exception("could not launch$url");
                              }
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/479px-WhatsApp_icon.png"),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              const url =
                                  "https://www.linkedin.com/in/diyashajithk/";
                              if (await canLaunchUrl(Uri.parse(url))) {
                                await launchUrl(Uri.parse(url));
                              } else {
                                print("could not launch");
                                throw "could not launch$url";
                              }
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-linkedin-512.png"),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              const url =
                                  "https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox";
                              if (await canLaunchUrl(Uri.parse(url))) {
                                await launchUrl(Uri.parse(url));
                              } else {
                                print("could not launch");
                                throw "could not launch$url";
                              }
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/5968/5968534.png"),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              const url = "https://github.com/DiyaShajith";
                              if (await canLaunchUrl(Uri.parse(url))) {
                                await launchUrl(Uri.parse(url));
                              } else {
                                print("could not launch");
                                throw "could not launch$url";
                              }
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/25/25231.png"),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              String telephoneNumber = "+91 9995239669";
                              String telephoneUrl = "tel:$telephoneNumber";
                              if (await canLaunchUrl(Uri.parse(telephoneUrl))) {
                                await launchUrl(Uri.parse(telephoneUrl));
                              } else {
                                print("could not launch");
                                throw "could not launch $telephoneUrl";
                              }
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/256/455/455705.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
