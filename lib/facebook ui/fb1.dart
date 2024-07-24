import 'package:basic_widgets/facebook%20ui/fb.dart';
import 'package:flutter/material.dart';

class Facebookcreate extends StatefulWidget {
  const Facebookcreate({super.key});

  @override
  State<Facebookcreate> createState() => _FacebookcreateState();
}

class _FacebookcreateState extends State<Facebookcreate> {
  final TextEditingController _firstname=TextEditingController();
  final TextEditingController _surname=TextEditingController();
  final TextEditingController _number=TextEditingController();
  final TextEditingController _password=TextEditingController();
  final TextEditingController _date=TextEditingController();
  final TextEditingController _month=TextEditingController();
  final TextEditingController _year=TextEditingController();
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 230, top: 22.5),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 230, top: 5),
            child: Text(
              "it's quick and easy",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: 400,
              height: 0.3,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 185,
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextField(controller: _firstname,
                    decoration: InputDecoration(
                        hintText: "First name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: Colors.grey,
                        filled: true),
                  ),
                ),
              ),
              SizedBox(
                width: 175,
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextField(controller: _surname,
                    decoration: InputDecoration(
                        hintText: "Surname",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        filled: true,
                        fillColor: Colors.grey),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: _number,maxLength: 10,
              decoration: InputDecoration(
                  hintText: "Mobile number or email address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.grey,
                  filled: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  fillColor: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 270, top: 5),
            child: Text(
              "Date of birth ?",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontStyle: FontStyle.normal),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 10),
                child: SizedBox(
                  width: 120,
                  height: 40,
                  child: TextField(controller: _date,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        hintText: "Date",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 10),
                child: SizedBox(
                  width: 110,
                  height: 40,
                  child: TextField(controller: _month,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        hintText: "Month",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 10),
                child: SizedBox(
                  width: 110,
                  height: 40,
                  child: TextField(controller: _year,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        hintText: "Year",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 300, top: 10),
            child: Text(
              "Gender ?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                child: RadioMenuButton(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    child: const Text(
                      "Female",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                child: RadioMenuButton(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    child: const Text(
                      "Male",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )),
              ),
              Container(
                width: 105,
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                child: RadioMenuButton(
                    value: "Custom",
                    groupValue: gender,
                    onChanged: (String? value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    child: const Text(
                      "Custom",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 5, right: 5),
            child: Text(
              "People who use our service may have uploaded your contact information to",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.3,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5.5,right: 0.95),
                child: Text(
                  "Facebook.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Learn more.",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "By clicking Sign Up,you agree to our",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.3,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms,",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Cookies.",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ))
            ],
          ),
          const Text(
            "You may receive SMS notification from us and can opt out any time.",
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.5,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
            child: MaterialButton(
              minWidth: double.infinity,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {
                if(_firstname.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Firstname is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
                if(_surname.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Surname is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
                if(_number.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Phone Number or Email is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
                if(_password.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Password is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
                if(_date.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Date is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
                if(_month.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Month is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
                if(_year.text.isEmpty){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(title: const Text("Error"),content: const Text("Year is Required"),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("ok"))
                    ],);
                  });
                }
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Fbpage()));
                  },
                  child: const Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.5),
                  )))
        ],
      ),
    ));
  }
}
