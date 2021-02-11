import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';

class PhoneWidget extends StatefulWidget {
  @override
  _PhoneWidgetState createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  final List<String> _countryCodes = ['+1', '+23'];
  String _selectedCountryCode;

  @override
  Widget build(BuildContext context) {
    _selectedCountryCode = _countryCodes[0];

    final countryDropDown = Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      height: 25.0,
      margin: const EdgeInsets.all(7.0),
      //width: 300.0,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: _selectedCountryCode,
            items: _countryCodes.map((String value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 12.0),
                  ));
            }).toList(),
            onChanged: (String value) {
              setState(() {
                _selectedCountryCode = value;
              });
            },
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
    return Container(
      width: double.infinity,
      // margin: new EdgeInsets.only(top: 10.0, bottom: 10.0, right: 3.0),
      color: Colors.white,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          } else {
            return '';
          }
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12.0),
            border: OutlineInputBorder(
                // borderSide:
                // new BorderSide(color: const Color(0xFFE0E0E0), width: 0.1),
                borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius)
            ),
          // focusedBorder:OutlineInputBorder(
          //   // borderSide: const BorderSide(color: Colors.amber, width: 2.0),
          //     borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius)
          // ),
            // fillColor: Colors.white,
            prefixIcon: countryDropDown,
            hintText: 'Phone Number',),
      ),
    );
  }
}