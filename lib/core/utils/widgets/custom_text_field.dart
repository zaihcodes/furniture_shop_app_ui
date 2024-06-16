import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {required this.labelText,
      this.onChanged,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      super.key});

  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function(String)? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isObscure;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          width: 1,
          color: theme.colorScheme.secondary.withOpacity(0.5),
        )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: theme.textTheme.bodyMedium!.copyWith(
                // color: theme.colorScheme.primary,
                // fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 0.h),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: widget.onChanged,
                  keyboardType: widget.keyboardType,
                  obscureText: isObscure,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              widget.obscureText
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Image.asset('assets/icons/eye.png'),
                    )
                  : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
