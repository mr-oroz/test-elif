import 'package:flutter/material.dart';
import 'package:test_elif/presentation/data/data.dart';
import 'package:test_elif/presentation/models/post_card_model.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/comments/comment_account.dart';
import 'package:test_elif/presentation/widgets/custom_container/custom_container.dart';
import 'package:test_elif/presentation/widgets/my_pinputs/send_message_input.dart';
import 'package:test_elif/presentation/widgets/posts/post_card.dart';

class CommentsDetailsPage extends StatelessWidget {
  const CommentsDetailsPage({
    super.key,
    required this.post,
  });

  final PostCardModel post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Запись',
          style: AppFonts.w500f18.copyWith(
            color: AppColors.textColor,
          ),
        ),
        leading: IconButton(
          iconSize: 12,
          color: AppColors.textColor,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SliverToBoxAdapter(
              child: PostCard(
                post: post,
                onPressed: () {},
              ),
            ),
            SliverToBoxAdapter(
              child: CustomContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${post.comments} Комментариев',
                      style: AppFonts.w500f14.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        commentItems.length,
                        (index) {
                          final item = commentItems[index];
                          return Column(
                            children: [
                              CommentAccount(
                                  avatar: post.avatar, commentData: item),
                              const SizedBox(height: 6),
                              if (index == 0)
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(),
                                    ),
                                    Flexible(
                                      flex: 8,
                                      child: CommentAccount(
                                        avatar: post.avatar,
                                        commentData: item,
                                      ),
                                    )
                                  ],
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const SendMessageInput(),
    );
  }
}
