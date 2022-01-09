import 'package:aaha/screens/home/home_screen.dart';
import 'package:aaha/screens/login/components/top_logo.dart';
import 'package:aaha/screens/login/login_screen.dart';
import 'package:aaha/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          const TopLogo(),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: const Text(
              "WELCOME BACK",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(6)),
                      child: const Icon(
                        Icons.mail_rounded,
                        size: 32,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 4, color: Colors.white)),
                              hintText: 'something@gmail.com',
                              contentPadding: EdgeInsets.only(left: 10)),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(6)),
                      child: const Icon(
                        Icons.vpn_key_rounded,
                        size: 32,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 4,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: '*********',
                              contentPadding: EdgeInsets.only(left: 10)),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: const Text("Forgot Password?"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const Text("Login with"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/facebook.png'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/google.png'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/discord.png'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Don't have account yet?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}