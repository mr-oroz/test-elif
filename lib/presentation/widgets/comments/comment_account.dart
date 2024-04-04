import 'package:flutter/material.dart';
import 'package:test_elif/presentation/models/comment_model.dart';
import 'package:test_elif/presentation/widgets/comments/comment_item.dart';
import 'package:test_elif/resources/resources.dart';

class CommentAccount extends StatelessWidget {
  const CommentAccount({
    super.key,
    required this.commentData, required this.avatar,
  });
  final String avatar;
  final CommentModel commentData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
        ),
        Flexible(
          flex: 8,
          child: CommentItem(
            username: commentData.username,
            comment: commentData.comment,
            data: 'сегодня в 15:53',
            like: commentData.like,
          ),
        ),
        const Flexible(
          flex: 1,
          child: Image(
            width: 16,
            height: 16,
            image: AssetImage(AppIcons.heart),
          ),
        )
      ],
    );
  }
}
