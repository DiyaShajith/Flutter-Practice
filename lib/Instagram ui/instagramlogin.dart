import 'package:flutter/material.dart';

class Instalogin extends StatefulWidget {
  const Instalogin({super.key});

  @override
  State<Instalogin> createState() => _InstaloginState();
}

class _InstaloginState extends State<Instalogin> {
  final TextEditingController _phone=TextEditingController();
  final TextEditingController _address=TextEditingController();
  final TextEditingController _companyname=TextEditingController();
  final TextEditingController _websitename=TextEditingController();
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Register',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,controller: _phone,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: 'Phone number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(keyboardType: TextInputType.streetAddress,controller: _address,
                decoration: InputDecoration(
                  hintText: 'Address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(keyboardType: TextInputType.name,controller: _companyname,
                decoration: InputDecoration(
                  hintText: 'Company name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: _websitename,
                decoration: InputDecoration(
                    hintText: 'Website name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(keyboardType: TextInputType.emailAddress,controller: _email,
                decoration: InputDecoration(
                    hintText: 'E-mail address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              ),
            ),
            Row(
              children: [Checkbox(activeColor: Colors.blue,checkColor: Colors.white,
                  value: (isChecked), onChanged: (val){
                setState(() {isChecked=val;

                });
                  }),

                const Text(
                  'I agree with ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Terms and conditions',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: MaterialButton(
                color: Colors.blue,
                minWidth: double.infinity,
                onPressed: () {},
                child: const Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),ElevatedButton(onPressed: (){
              if(_phone.text.isEmpty){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text('Error'),content: const Text('Number is Required'),actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text('ok'))
                  ],
                  );
                }
                );
              }else if(_address.text.isEmpty){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text('Error'),content: const Text('Address is Required'),actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text('ok'))
                  ],
                  );
                }
                );
              }else if(_companyname.text.isEmpty){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text('Error'),content: const Text('Company Name is Required'),actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text('ok'))
                  ],
                  );
                }
                );
              }else if(_websitename.text.isEmpty){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text('Error'),content: const Text('Website Name is Required'),actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text('ok'))
                  ],
                  );
                }
                );
              }else if(_email.text.isEmpty){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text('Error'),content: const Text('Email is Required'),actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text('ok'))
                  ],
                  );
                }
                );
              }else if(_password.text.isEmpty){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text('Error'),content: const Text('Password is Required'),actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text('ok'))
                  ],
                  );
                }
                );
              }
            }, child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
