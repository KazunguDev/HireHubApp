import 'package:flutter/material.dart';

class BasicComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'First Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black, width: 0.5),
              ),
              border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Last Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black, width: 0.5),
              ),
              border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Gender',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black, width: 0.5),
              ),
              border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Phone',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black, width: 0.5),
              ),
              border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
