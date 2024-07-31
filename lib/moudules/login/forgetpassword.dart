import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduatedproject/moudules/login/loginscreen.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String? password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              backgroundColor: const Color(0XFFFFFFFF),
              body: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(
                      top: 70,
                      left: 32,
                      right: 32,
                      bottom: 32,
                    ),
                    child: SvgPicture.asset(
                      'lib/assets/images/logo.svg',
                      width: 133.36,
                      height: 45,


                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 43,
                      right: 43,
                      top: 16,
                      bottom: 8,
                    ),
                    child: SizedBox(
                      width: 263,
                      height: 42,
                      child: Text('Forgot Password',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 40,
                    ),
                    child: SizedBox(
                      width: 283,
                      height: 22,
                      child: Text(
                        'Please Select an Option to Reset',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 4,
                      bottom: 8,
                    ),
                    child: Container(
                      width: 388,
                      height: 93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.3,
                        ),
                      ),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: const Text(
                            'Reset Via Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.only(
                              right: 40,
                            ),
                            child: Text(
                              'reset code will be sent to your email address used in registration',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          value: "email",
                          groupValue: password,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 8,
                      bottom: 32,
                    ),
                    child: Container(
                      width: 388,
                      height: 93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.3,
                        ),
                      ),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: const Text(
                            "Reset Via SMS",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.only(
                              right: 32,
                            ),
                            child: Text(
                              "reset code will be sent to your Phone Number",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          value: "sms",
                          groupValue: password,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 388,
                    height: 48,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Verification()));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0XFF2F3FFF),
                            )),
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 253,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't need to do this?"),
                        GestureDetector(
                          onTap: ()  {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const loginscreen()),
                            );
                          },
                          child: const Text(
                            'log in',
                            style: TextStyle(
                              color: Color(0XFF2F3FFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) {
            return SizedBox(
              width: 428,
              height: 926,
              child: Scaffold(
                backgroundColor: const Color(0XFFFFFFFF),
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(
                          top: 70,
                          left: 32,
                          right: 32,
                          bottom: 32,
                        ),
                        child:  SvgPicture.asset(
                          'lib/assets/images/logo.svg',
                          width: 133.36,
                          height: 45,


                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 43,
                          right: 43,
                          top: 16,
                          bottom: 8,
                        ),
                        child: SizedBox(
                          width: 364,
                          height: 39,
                          child: Text('Verification Code Entry',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: SizedBox(
                          width: 299,
                          height: 45,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Please Enter the Verification Code Sent to Your Email',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                              ),
                              child: SizedBox(
                                width: 85,
                                height: 101,
                                child: TextField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: Theme.of(context).textTheme.titleLarge,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                              ),
                              child: SizedBox(
                                width: 85,
                                height: 101,
                                child: TextField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: Theme.of(context).textTheme.titleLarge,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                              ),
                              child: SizedBox(
                                width: 85,
                                height: 101,
                                child: TextField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: Theme.of(context).textTheme.titleLarge,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                              ),
                              child: SizedBox(
                                width: 85,
                                height: 101,
                                child: TextField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  style: Theme.of(context).textTheme.titleLarge,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 1,
                          bottom: 8,
                        ),
                        child: SizedBox(
                          width: 388,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to another screen when the button is pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Reset()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                  const Color(0XFF2F3FFF),
                                )),
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 253,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't need to do this?"),
                            GestureDetector(
                              onTap: ()  {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  const loginscreen()),
                                );
                              },
                              child: const Text(
                                'log in',
                                style: TextStyle(
                                  color: Color(0XFF2F3FFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: SizedBox(
          width: 428,
          height: 926,
          child: Column(
            children: [
               Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                  left: 32,
                  right: 32,
                  bottom: 32,
                ),
                child:  SvgPicture.asset(
                  'lib/assets/images/logo.svg',
                  width: 133.36,
                  height: 45,


                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 43,
                  right: 43,
                  top: 16,
                  bottom: 32,
                ),
                child: SizedBox(
                  width: 364,
                  height: 39,
                  child: Text('Reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 250,
                ),
                child: Text(
                  'New Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: SizedBox(
                  width: 387,
                  height: 75,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 220),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: SizedBox(
                  width: 387,
                  height: 74,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 8,
                  bottom: 8,
                ),
                child: SizedBox(
                  width: 388,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0XFF2F3FFF),
                        )),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 253,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't need to do this?"),
                    GestureDetector(
                      onTap: ()  {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const loginscreen()),
                        );
                      },
                      child: const Text(
                        'log in',
                        style: TextStyle(
                          color: Color(0XFF2F3FFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
