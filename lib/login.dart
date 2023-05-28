import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/share_comp.dart';

class LoginScreen extends StatelessWidget {
@override


  bool isbassword =true;
  var fun=Function;
  var Emailcont = TextEditingController();

  var passwordcont = TextEditingController();

var formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text(
          'Login',
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(autovalidateMode:  AutovalidateMode.always,
              key: formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (text) {
                      if (text!.length <5){
                        return 'يجب ان يكون الايميل صحيح ';

                    }
                    return null;
                  },
                    controller: Emailcont,
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email,
                        )),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (text) {
                    if ( text!.isEmpty){

                   return 'يجب ان يكون الباصورد صجيج';

                    }
                    return null;
                  },
                    controller: passwordcont,
                    obscureText: isbassword,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),


                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(

                    height: 20,
                  ),
                  Defaultbutton(
                      width: double.infinity,
                      background: Colors.blue,
                      text: 'Login',
                      x: () {

                        var formstate=formKey.currentState;
                        if (formstate!.validate()){
                        print(Emailcont.text);
                        print(passwordcont.text);}
                      }),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have acc ?'),
                      TextButton(onPressed: () {}, child: Text('Register'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
