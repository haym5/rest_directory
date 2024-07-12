import 'package:flutter/material.dart';
import 'package:restaurant/Signup.dart';
import 'package:restaurant/homepage.dart';
import 'database_helper.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key});

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isHiddenPassword = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Restaurant Directory',style: TextStyle( color:Colors.white),),
        backgroundColor: Colors.blueGrey,
       // centerTitle: true,
       
      ),
      body: Container(
         color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Login to your account!",
              style: TextStyle(fontSize: 15),
            ),
             SizedBox(height:20),
            Image(
          image:AssetImage('images/2.png'),
          
          width: 200,
          height:195,
          fit: BoxFit.contain,
          ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    
                   // keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: isHiddenPassword,
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
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: 300,
                    height: 60,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        String email = _emailController.text;
                        String password = _passwordController.text;

                        var user = await DatabaseHelper.instance.getUser(email, password);
                        if (user != null) {
                          String userName = user['name'] ?? ''; // Ensure 'name' is not null
                          String userEmail = user['email'] ?? ''; // Ensure 'email' is not null

                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(
                                userName: userName,
                                userEmail: userEmail,
                              ),
                            ),
                            (Route<dynamic> route) => false, // Clear all routes on stack
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Invalid email or password')),
                          );
                        }
                      }
                    },
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Login",
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
                      Text("Don't have an account!."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()),
                          );
                        },
                        child: Text(
                          "Sign up",
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

