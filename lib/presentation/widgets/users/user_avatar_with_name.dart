import 'package:flutter/material.dart';
import 'package:test_elif/presentation/widgets/users/user_details.dart';

class UserAvatarWithName extends StatelessWidget {
  const UserAvatarWithName({
    super.key,
    required this.username,
    required this.avatar,
    required this.data,
  });
  final String username;
  final String avatar;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
        ),
        const SizedBox(width: 5),
        UserDetails(
          data: data,
          username: username,
        )
      ],
    );
  }
}