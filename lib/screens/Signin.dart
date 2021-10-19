import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mamadokitchen/screens/SignUp.dart';
import 'package:mamadokitchen/screens/homepage.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                  "assets/bg.jpg"),
              fit: BoxFit.cover,
            ),

        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
                child: Image.asset('assets/logo.png',scale: 4,)),
            Container(width: MediaQuery.of(context).size.width*0.65,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: FormBuilderTextField(
                name: 'age',
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Email",
                ),
                onChanged: null,
                // valueTransformer: (text) => num.tryParse(text),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.numeric(context),
                  FormBuilderValidators.max(context, 70),
                ]),
                keyboardType: TextInputType.number,
              ),
            ),
            Container(width: MediaQuery.of(context).size.width*0.65,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: FormBuilderTextField(
                name: 'age',
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Password",
                ),
                onChanged: null,
                // valueTransformer: (text) => num.tryParse(text),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.numeric(context),
                  FormBuilderValidators.max(context, 70),
                ]),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 5,),
            Container(width: MediaQuery.of(context).size.width*0.65,
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text('Forgot Password?',style: TextStyle(color: Colors.white,fontSize: 12),)
                ],
              ),
            ),
            SizedBox(height: 5,),
            InkWell(
              onTap:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Container(
                // width: MediaQuery.of(context).size.width*0.65,
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(80)
                ),
                child: Text('Login',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 14)),
              ),
            ),
            SizedBox(height:25,),
            InkWell(
                onTap:  () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text('New User? Register',style: TextStyle(color: Colors.white,fontSize: 12),))
          ],
        ),
      ),
    );
  }
}
