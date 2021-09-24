import 'package:api_reactive_dart/model/gender.dart';
import 'package:api_reactive_dart/response/g.response.dart';
import 'package:flutter/material.dart';

Widget buildUserWidget(UserResponse data, BuildContext context) {
  User user = data.results[0];
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(user.picture.large),
        ),
        Text(
          "${user.name.first}  ${user.name.last}",
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(user.email, style: Theme.of(context).textTheme.subtitle1),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(user.location.street, style: Theme.of(context).textTheme.bodyText1),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(user.location.city, style: Theme.of(context).textTheme.bodyText1),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(user.location.state, style: Theme.of(context).textTheme.bodyText1),
      ],
    ),
  );
}
