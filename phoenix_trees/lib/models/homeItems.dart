import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeItems {
  String title;
  IconData iconData;
  HomeItems({
    required this.title,
    required this.iconData,
  });
}

List<HomeItems> homeItems = [
  HomeItems(
    title: "All",
    iconData: FontAwesomeIcons.borderAll,
  ),
  HomeItems(
    title: "Current",
    iconData: FontAwesomeIcons.leaf,
  ),
  HomeItems(
    title: "Future",
    iconData: FontAwesomeIcons.tree,
  ),
  HomeItems(
    title: "Updates",
    iconData: FontAwesomeIcons.newspaper,
  ),
  HomeItems(
    title: "Past",
    iconData: FontAwesomeIcons.dove,
  ),
];
