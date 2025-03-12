/*

This is a follow / unfollow button

To use this widget, you need:

- a function ( e.g. toggleFollow() ),
- isFollowing ( e.g false -> then we will show follow button intead of unfollow button)

*/

import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool isFollowing;

  const FollowButton({super.key, this.onPressed, required this.isFollowing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding on outside
      padding: const EdgeInsets.symmetric(horizontal: 25.0),

      // button
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: MaterialButton(
          onPressed: onPressed,

          // pading inside
          padding: const EdgeInsets.all(25),

          color:
              isFollowing ? Theme.of(context).colorScheme.primary : Colors.blue,

          child: Text(
            isFollowing ? "Unfollow" : "Follow",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
