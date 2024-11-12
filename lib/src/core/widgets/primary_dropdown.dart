import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '../values/colors.dart';

class PrimaryDropDown<Type> extends StatelessWidget {
  final List<Type> items;
  final Type selectedValue;
  final Widget Function(Type?) child;
  final void Function(Type?)? onChanged;
  final bool Function(Type, String)? filterFn;
  final String Function(Type)? itemAsString;
  final bool? showShadow;
  final bool? searchable;
  final String? hintText;
  final GlobalKey<DropdownSearchState>? dropDownKey;

  const PrimaryDropDown(
      {super.key,
      required this.items,
      required this.selectedValue,
      required this.onChanged,
      required this.child,
      this.showShadow,
      this.dropDownKey,
      this.itemAsString,
      this.hintText,
      this.searchable = false,
      this.filterFn});

  @override
  Widget build(BuildContext context) {
    return searchable == true
        ? Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(5),
                boxShadow: showShadow == true
                    ? const <BoxShadow>[
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.10),
                            //shadow for button
                            blurRadius: 5) //blur radius of shadow
                      ]
                    : null),
            child: DropdownSearch<Type>(
              key: dropDownKey,
              filterFn: filterFn,
              items: (filter, loadProps) {
                return items;
              },
              compareFn: (item1, item2) {
                return true;
              },
              dropdownBuilder: (context, selectedItem) => child(selectedItem),
              itemAsString: itemAsString,
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  hintText: "$hintText",
                  border: InputBorder.none,
                ),
              ),
              selectedItem: selectedValue,
              popupProps: const PopupProps.menu(
                menuProps: MenuProps(
                  shape: RoundedRectangleBorder(),
                  borderOnForeground: false,
                ),
                searchFieldProps: TextFieldProps(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                )),
                showSearchBox: true,
                searchDelay: Duration.zero,
              ),
              onChanged: onChanged,
            ),
          )
        : DropdownButtonHideUnderline(
            child: DecoratedBox(
            decoration: BoxDecoration(
                color: colorWhiteSecondary.withOpacity(0.8),
                borderRadius: BorderRadius.circular(5),
                boxShadow: showShadow == true
                    ? const <BoxShadow>[
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.10),
                            //shadow for button
                            blurRadius: 5) //blur radius of shadow
                      ]
                    : null),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Type>(
                value: selectedValue,
                items: items
                    .map((Type e) => DropdownMenuItem<Type>(
                          value: e,
                          child: child(e),
                        ))
                    .toList(),
                onChanged: onChanged,
              ),
            ).paddingAll(5.0),
          ));
  }
}
