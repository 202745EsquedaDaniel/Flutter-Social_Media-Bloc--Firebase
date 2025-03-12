/*

This is a follow / unfollow button

To use this widget, you need:

- a function ( e.g. toggleFollow() ),
- isFollowing ( e.g false -> then we will show follow button intead of unfollow button)

*/

import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final void Function()? onPressed;
  const FollowButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
