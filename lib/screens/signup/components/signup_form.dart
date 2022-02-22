import 'package:aaha/components/formfield_icon.dart';
import 'package:aaha/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final String _requiredtxt = "Required *";
  late String fullname, email, password1, password2;

  @override
  Widget build(BuildContext context) {
    var enabledUnderlineInputBorder = const UnderlineInputBorder(
        borderSide: BorderSide(width: 4, color: Colors.white));
    var disabledUnderlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(width: 4, color: Theme.of(context).accentColor));
    return Form(
        // autovalidate: true,
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                const FormFieldIcon(
                  icon: Icons.person_rounded,
                ),
                Expanded(
                  child: TextFormField(
                    validator: RequiredValidator(errorText: _requiredtxt),
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        disabledBorder: disabledUnderlineInputBorder,
                        hintText: 'Full name',
                        contentPadding: EdgeInsets.only(left: 10)),
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
                  icon: Icons.mail_rounded,
                ),
                Expanded(
                  child: TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: _requiredtxt),
                      EmailValidator(errorText: "Not a Valid Email")
                    ]),
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        disabledBorder: disabledUnderlineInputBorder,
                        hintText: 'Email',
                        contentPadding: EdgeInsets.only(left: 10)),
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
                  icon: Icons.location_on,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Address',
                        contentPadding: EdgeInsets.only(left: 10)),
                    validator: RequiredValidator(errorText: _requiredtxt),
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
                  icon: Icons.phone,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Contact',
                        contentPadding: EdgeInsets.only(left: 10)),
                    validator: RequiredValidator(errorText: _requiredtxt),
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
                  icon: Icons.calendar_today_rounded,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: enabledUnderlineInputBorder,
                          hintText: 'Date of Birth',
                          contentPadding: EdgeInsets.only(left: 10)),
                      validator: RequiredValidator(errorText: _requiredtxt),
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
                const FormFieldIcon(
                  icon: Icons.male_rounded,
                ),
                Expanded(
                  child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: enabledUnderlineInputBorder,
                          hintText: 'Gender',
                          contentPadding: EdgeInsets.only(left: 10)),
                      validator: RequiredValidator(errorText: _requiredtxt)),
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
                    onSaved: (value) {
                      password1 = value!;
                    },
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(left: 10)),
                    validator: MultiValidator([
                      MinLengthValidator(8,
                          errorText:
                              "Password must be atleast 8 characters long"),
                      MaxLengthValidator(15,
                          errorText:
                              "Password can't be longer that 8 characters"),
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
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Confirm Password',
                        contentPadding: EdgeInsets.only(left: 10)),
                    validator: MultiValidator([
                      MinLengthValidator(8,
                          errorText:
                              "Password must be atleast 8 characters long"),
                      MaxLengthValidator(15,
                          errorText:
                              "Password can't be longer that 8 characters"),
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
                  icon: Icons.group,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Account Type',
                        contentPadding: EdgeInsets.only(left: 10, top: 10)),
                    validator: RequiredValidator(errorText: _requiredtxt),
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
                  icon: Icons.photo_camera_front_outlined,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: enabledUnderlineInputBorder,
                          hintText: 'Pan Number',
                          contentPadding: EdgeInsets.only(left: 10, top: 10)),
                      validator: RequiredValidator(errorText: _requiredtxt),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              // margin: const EdgeInsets.only(top: 25),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Navigator.pushNamed(context, LoginSucessScreen.routeName);

                  }
                },
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
                children: [
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/facebook.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/google.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/discord.png'),
                    ),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ))
              ],
            )
          ],
        ));
  }
}
