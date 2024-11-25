import 'package:flutter/material.dart';

class PlusSearchInput extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  const PlusSearchInput({required this.searchController,this.onSubmitted,required this.hintText,this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: searchController,
        textAlign: TextAlign.center,
        onChanged: onChanged,
        onSubmitted:onSubmitted ,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(

          suffixIcon:
          // searchController.text.isNotEmpty?
          InkWell(
            onTap: () {
              searchController.clear();
            },
            child: const Icon(Icons.clear),
          ),
                // :const SizedBox.shrink(),
          prefixIcon:
          const Icon(Icons.search, size: 20, color: Color(0xffFF5A60)),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black.withOpacity(.75)),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}