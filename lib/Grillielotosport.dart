import 'package:flutter/material.dart';

class Griilieloto extends StatefulWidget {
  const Griilieloto({super.key});

  @override
  State<Griilieloto> createState() => _GriilielotoState();
}

class _GriilielotoState extends State<Griilieloto> {
  String? psg;
  String? monaco;
  String? rennies;
  String? stras;
  String? metz;
  String? angers;
  String? chambly;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "GRILLE LOTOSPORT",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: const Icon(
            Icons.line_weight,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Libelle",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "1",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "N",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "2",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: Text(
                    "PSG-DIJION",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 5),
                  child: RadioMenuButton(
                      value: "PSG",
                      groupValue: psg,
                      onChanged: (String? value) {
                        setState(() {
                          psg = value;
                        });
                      },
                      child: const Text("")),
                ),
                RadioMenuButton(
                    value: "PSG1",
                    groupValue: psg,
                    onChanged: (String? value) {
                      setState(() {
                        psg = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "PSG2",
                    groupValue: psg,
                    onChanged: (String? value) {
                      setState(() {
                        psg = value;
                      });
                    },
                    child: const Text(""))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: Text(
                    "MONACO-REIMS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RadioMenuButton(
                    value: "MONAC",
                    groupValue: monaco,
                    onChanged: (String? value) {
                      setState(() {
                        monaco = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "MONAC1",
                    groupValue: monaco,
                    onChanged: (String? value) {
                      setState(() {
                        monaco = value;
                      });
                    },
                    child: const Text("")),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RadioMenuButton(
                      value: "MONAC2",
                      groupValue: monaco,
                      onChanged: (String? value) {
                        setState(() {
                          monaco = value;
                        });
                      },
                      child: const Text("")),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 2,right: 0.25),
                  child: Text(
                    "TOULOUSE-RENNES",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RadioMenuButton(
                    value: "RENNES",
                    groupValue: rennies,
                    onChanged: (String? value) {
                      setState(() {
                        rennies = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "RENNES1",
                    groupValue: rennies,
                    onChanged: (String? value) {
                      setState(() {
                        rennies = value;
                      });
                    },
                    child: const Text("")),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: RadioMenuButton(
                      value: "RENNES2",
                      groupValue: rennies,
                      onChanged: (String? value) {
                        setState(() {
                          rennies = value;
                        });
                      },
                      child: const Text("")),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: Text(
                    "MONTPELLIER-\nSTRASBOURG",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: RadioMenuButton(
                      value: "STRAS",
                      groupValue: stras,
                      onChanged: (String? value) {
                        setState(() {
                          stras = value;
                        });
                      },
                      child: const Text("")),
                ),
                RadioMenuButton(
                    value: "STRAS1",
                    groupValue: stras,
                    onChanged: (String? value) {
                      setState(() {
                        stras = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "STRAS2",
                    groupValue: stras,
                    onChanged: (String? value) {
                      setState(() {
                        stras = value;
                      });
                    },
                    child: const Text(""))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: Text(
                    "AMIENS-METZ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1,left: 5),
                  child: RadioMenuButton(
                      value: "METZ",
                      groupValue: metz,
                      onChanged: (String? value) {
                        setState(() {
                          metz = value;
                        });
                      },
                      child: const Text("")),
                ),
                RadioMenuButton(
                    value: "METZ1",
                    groupValue: metz,
                    onChanged: (String? value) {
                      setState(() {
                        metz = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "METZ2",
                    groupValue: metz,
                    onChanged: (String? value) {
                      setState(() {
                        metz = value;
                      });
                    },
                    child: const Text(""))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: Text(
                    "BREST-ANGERS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RadioMenuButton(
                    value: "BREST",
                    groupValue: angers,
                    onChanged: (String? value) {
                      setState(() {
                        angers = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "BREST1",
                    groupValue: angers,
                    onChanged: (String? value) {
                      setState(() {
                        angers = value;
                      });
                    },
                    child: const Text("")),
                RadioMenuButton(
                    value: "BREST2",
                    groupValue: angers,
                    onChanged: (String? value) {
                      setState(() {
                        angers = value;
                      });
                    },
                    child: const Text(""))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 0.25),
                  child: Text(
                    "LORIENT-CHAMBLY",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: RadioMenuButton(
                      value: "LOR",
                      groupValue: chambly,
                      onChanged: (String? value) {
                        setState(() {
                          chambly = value;
                        });
                      },
                      child: const Text("")),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: RadioMenuButton(
                      value: "LOR1",
                      groupValue: chambly,
                      onChanged: (String? value) {
                        setState(() {
                          chambly = value;
                        });
                      },
                      child: const Text("")),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: RadioMenuButton(
                      value: "LOR2",
                      groupValue: chambly,
                      onChanged: (String? value) {
                        setState(() {
                          chambly = value;
                        });
                      },
                      child: const Text("")),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 390,
                    height: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {},
              child: const Text(
                "VALIDER VOTRE GRILLE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          ],
        ));
  }
}
