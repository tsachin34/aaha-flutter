import 'package:aaha/screens/login/components/top_logo.dart';
import 'package:aaha/screens/login/login_screen.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: SizedBox(
            child: ListView(
              shrinkWrap: true,
              children: [
                const TopLogo(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "WELCOME BACK",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                              Icons.person_rounded,
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
                                    hintText: 'Full name',
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
                                    hintText: 'Email',
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
                              Icons.location_on,
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
                                    hintText: 'Adderss',
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
                              Icons.phone,
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
                                    hintText: 'Contact',
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
                              Icons.calendar_today_rounded,
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
                                    hintText: 'Date of Birth',
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
                              Icons.male_rounded,
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
                                    hintText: 'Gender',
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
                                            width: 4, color: Colors.white)),
                                    hintText: 'Password',
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
                                            width: 4, color: Colors.white)),
                                    hintText: 'Confirm Password',
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
                              Icons.group,
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
                                    hintText: 'Account Type',
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
                              Icons.photo_camera_front_outlined,
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
                                    hintText: 'Pan Number',
                                    contentPadding: EdgeInsets.only(left: 10)),
                              ),
                            ),
                          )
                        ],
                      ),
                    const SizedBox(height: 30,),
                    Container(
                        // margin: const EdgeInsets.only(top: 25),
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'REGISTER',
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
      
                     const Text("Register Using"),
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
      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}