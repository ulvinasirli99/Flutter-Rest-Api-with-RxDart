import 'package:api_reactive_dart/bloc/user_bloc.dart';
import 'package:api_reactive_dart/component/error.dart';
import 'package:api_reactive_dart/component/loading.dart';
import 'package:api_reactive_dart/response/g.response.dart';
import 'package:api_reactive_dart/widget/user_widget.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserWidgetState();
  }
}

class _UserWidgetState extends State<UserWidget> {
  @override
  void initState() {
    super.initState();
    bloc.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserResponse>(
      stream: bloc.subject.stream,
      builder: (context, AsyncSnapshot<UserResponse> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.error != null && snapshot.data!.error.length > 0) {
            return buildErrorWidget(snapshot.data!.error);
          }
          return buildUserWidget(snapshot.data!,context);
        } else if (snapshot.hasError) {
          return buildErrorWidget(snapshot.error.toString());
        } else {
          return buildLoadingWidget();
        }
      },
    );
  }
}
