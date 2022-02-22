import 'package:aaha/components/formfield_icon.dart';
import 'package:aaha/size_config.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  final _formKey = GlobalKey<FormState>();
  final String _requiredtxt = "Required *";

  @override
  Widget build(BuildContext context) {
    var enabledUnderlineInputBorder = const UnderlineInputBorder(
        borderSide: BorderSide(width: 4, color: Colors.white));
    var disabledUnderlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(width: 4, color: Theme.of(context).accentColor));
    return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Product",
              style:
                  TextStyle(fontSize: getProportionateScreenWidth(context, 16)),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(icon: Icons.local_offer_rounded),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Product Name',
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(
                  icon: Icons.text_snippet,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Product Description',
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(
                  icon: Icons.attach_money,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Price',
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(
                  icon: Icons.grid_view,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Category',
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(
                  icon: Icons.tag,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Tags',
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(icon: Icons.check,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Stock',
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(context, 20),
            ),
            Row(
              children: [
                const FormFieldIcon(icon: Icons.upload,),
               Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: enabledUnderlineInputBorder,
                        hintText: 'Upload Image',
                        contentPadding: EdgeInsets.only(left: 10)),
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
                onPressed: () {},
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ]),
    );
  }
}
