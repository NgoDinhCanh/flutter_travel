import 'package:flutter/widgets.dart';
import 'package:flutter_travel/theme/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String? title;
  ResponsiveButton(
      {Key? key, this.width = 100, this.isResponsive = false, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title != null
              ? Text(
                  title!,
                )
              : const SizedBox.shrink(),
          Image.asset('assets/images/button-one.png'),
        ],
      ),
    );
  }
}
