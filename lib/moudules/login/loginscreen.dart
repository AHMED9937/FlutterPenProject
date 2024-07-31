import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduatedproject/moudules/layoutScreen/layoutscreen.dart';
import 'package:graduatedproject/moudules/login/forgetpassword.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  const LayoutScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email or password is not correct')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                SvgPicture.asset(
                  'lib/assets/images/logo.svg',
                  width: 133.3,
                  height: 45,
                ),
                const SizedBox(height: 47),
                const Text(
                  'Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Welcome back! Please enter your details',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Form(

                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Email Address',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Colors.black, // Red color for the normal state
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Colors.black, // Red color for the focused state
                                width: 1.0,
                              ),
                            ),
                          ),
                          obscureText: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Email Address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Password',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Colors.black, // Red color for the normal state
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Colors.black, // Red color for the focused state
                                width: 1.0,
                              ),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                            activeColor:const Color.fromRGBO(47, 63, 255, 1.0) ,
                                        value: _rememberMe,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _rememberMe = value!;
                                      });
                                    },
                                  ),
                                  const Text('Remember for 30 days'),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ForgetPassword()),
                                  );
                                },
                                child: const Text('Forgot Password?',style: TextStyle(color: Color.fromRGBO(
                                    47, 63, 255, 1.0))),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: const Color(0xFF2F3FFF), // This affects the foreground content, typically the text color
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Example padding, adjust as needed
                          ),
                          onPressed: _login,
                          child: const SizedBox(
                              height: 20,
                              width:388 ,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Sign in '),
                                ],
                              )),
                        ),
                            const SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Implement Google sign-up logic
                          },

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'lib/assets/images/Social Icons.svg',

                              ),
                              const SizedBox(width: 10,),
                              const Text('Sign in with google ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(
                                  47, 63, 255, 1.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
