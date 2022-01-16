import 'package:aaha/components/formfield_icon.dart';
import 'package:aaha/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key? key}) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final _formKey = GlobalKey<FormState>();
  final String _requiredtxt = "Required *";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              const FormFieldIcon(
                icon: Icons.mail_rounded,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 4, color: Colors.white)),
                      hintText: 'something@gmail.com',
                      contentPadding: EdgeInsets.only(left: 10)),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required *'),
                    EmailValidator(errorText: "Enter valid email")
                  ]),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const FormFieldIcon(
                icon: Icons.vpn_key_rounded,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 4,
                          color: Colors.white,
                        ),
                      ),
                      hintText: '*********',
                      contentPadding: EdgeInsets.only(left: 10)),
                  validator: RequiredValidator(errorText: "Required *"),
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
        ],
      ),
    );
  }
}
