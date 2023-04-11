import 'package:fitness_app/src/styles.dart';
import "package:flutter/material.dart";
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? _selectedValue;
  final List<String> items = [
    'weekly',
    'monthly',
    'yearly',
   
  ];

  @override
void initState() {
  super.initState();
  _selectedValue = 'weekly';
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: AppStyles.semiRegular.copyWith(
                    fontSize:12.sp,
                    color:AppStyles.whiteColor
                  ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value as String;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 40,
            width: 110,
            padding: const EdgeInsets.symmetric(horizontal:12,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              gradient: const LinearGradient(
                        stops: [0.0, 1.0],
                        colors: [
                          AppStyles.primaryColorGradientTwo,
                          AppStyles.primaryColorGradientOne
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
              
            ),
            elevation: 2,
          ),
          iconStyleData:  IconStyleData(
            icon: AppStyles.dropDownSvg,
            iconSize: 14,
            
          ),
          dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 200,
              padding: null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color.fromARGB(255, 81, 85, 85),
              ),
              elevation: 8,
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all(6),
                thumbVisibility: MaterialStateProperty.all(true),
              )),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }
}
