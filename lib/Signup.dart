import 'package:flutter/material.dart';
import 'package:restaurant/Signin.dart';
import 'package:restaurant/homepage.dart';
import 'database_helper.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isHiddenPassword = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Restaurant directory',style: TextStyle( color:Colors.white),),
        backgroundColor: Colors.blueGrey,      
       
      ),
      body:Container(
         color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign up',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Create an account!",
              style: TextStyle(fontSize: 15),
            ),
             SizedBox(height:15),
            Image(
          image:AssetImage('images/2.png'),
          
          width: 200,
          height:195,
          fit: BoxFit.contain,
          ),
           
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                  //  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Please enter Email" : null;
                    },
                  ),
                  SizedBox(height: 17),
                  TextFormField(
                    obscureText: isHiddenPassword,
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.lock),
                       suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                      child:Icon(
                        Icons.visibility,
                      ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Please enter Password" : null;
                    },
                  ),
                  SizedBox(height: 17),
                  TextFormField(
                    obscureText: isHiddenPassword,
                    controller: _confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                       suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                      child:Icon(
                        Icons.visibility,
                      ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Please Confirm your password" : null;
                    },
                  ),
                  SizedBox(height: 17),
                  MaterialButton(
                    minWidth: 300,
                    height: 60,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        if (_passwordController.text == _confirmPasswordController.text) {
                          String email = _emailController.text;
                          String password = _passwordController.text;

                          int id = await DatabaseHelper.instance.insertUser({
                            'email': email,
                            'password': password,
                          });

                          if (id != 0) {
                            // Navigate to MainPage with user info
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(
                                  //userName: email, // You can pass email or name here
                                  //userEmail: email,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Error creating account')),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Passwords do not match')),
                          );
                        }
                      }
                    },
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                     
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account!."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SigninPage()),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _togglePasswordView() {
    //if(isHiddenPassword == true) {
      //isHiddenPassword = false;
  //  }else{
     // isHiddenPassword = true;
   // }
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
    }
}
