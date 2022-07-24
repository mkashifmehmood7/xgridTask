import 'package:flutter/material.dart';

class TileButton extends StatelessWidget {
  const TileButton({
    Key? key,
    this.title,
    this.icon,
  }) : super(key: key);
  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(22),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsetsDirectional.only(bottom: 15),
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
          ),
          const SizedBox(width: 15),
          Text(
            title!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 25,
          ),
        ],
      ),
    );
  }
}
