import 'package:financial_app/routes.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final String? subtitle;
  final Widget? titleChild;
  final bool back;
  final void Function()? onBack;
  final Widget? backIcon;
  final bool centerTitle;
  final double toolbarHeight;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Color? bgColor;

  const MyAppBar(
      {Key? key,
      this.title,
      this.subtitle,
      this.titleChild,
      this.back = false,
      this.onBack,
      this.backIcon,
      this.centerTitle = false,
      this.toolbarHeight = kToolbarHeight,
      this.actions, this.bottom, this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      bottom: bottom,
      shadowColor: Colors.transparent,
      leading: back ? _back() : null,
      title: Container(
        transform: back && centerTitle != true
            ? Matrix4.translationValues(-22, 0, 0)
            : null,
        child: titleChild ??
            Column(
              children: [
                if (title != null)
                  Text(
                    title!.trim(),
                    style: TextStyle(),
                  ),
                if (subtitle != null) Text(subtitle!.trim())
              ],
            ),
      ),
      actions:
          actions != null ? [...actions!, const SizedBox(width: 8)] : null,
    );
  }

  Widget _back() {
    return IconButton(
      visualDensity: VisualDensity.compact,
      icon: backIcon ??
          const Icon(
            Icons.arrow_back_ios,
            size: 28,
          ),
      onPressed: () {
          Routes.router.navigate(Routes.settings);
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
