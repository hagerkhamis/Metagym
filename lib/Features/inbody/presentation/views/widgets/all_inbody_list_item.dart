import 'package:flutter/material.dart';
import 'package:gyms/features/inbody/domain/entities/Inbody.dart';

class AllInbodyListItem extends StatelessWidget {
  const AllInbodyListItem({
    super.key,
    required this.newsList,
    required this.itemIndex,
  });
  final AllInbodyEntity newsList;
  final int itemIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: itemIndex.isOdd
            ? Theme.of(context).primaryColor.withOpacity(.2)
            : Theme.of(context).primaryColor.withOpacity(.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.remove_red_eye_outlined,
            size: 30,
          ),
          Text(
            newsList.dayDate ?? "",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
