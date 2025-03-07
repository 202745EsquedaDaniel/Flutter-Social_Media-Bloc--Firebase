import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/auth/presentation/components/my_text_field.dart';
import 'package:myapp/features/profile/domain/entities/profile_user.dart';
import 'package:myapp/features/profile/domain/presentation/cubits/profile_cubit.dart';
import 'package:myapp/features/profile/domain/presentation/cubits/profile_states.dart';

class EditProfilePage extends StatefulWidget {
  final ProfileUser user;
  const EditProfilePage({super.key, required this.user});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final bioTextController = TextEditingController();

  //update profile button pressed
  void updateProfile() async {
    //  profile cubit
    final profileCubit = context.read<ProfileCubit>();

    if (bioTextController.text.isNotEmpty) {
      profileCubit.updateProfile(
        uid: widget.user.uid,
        newBio: bioTextController.text,
      );
    }
  }

  // BUILD UI
  @override
  Widget build(BuildContext context) {
    //  SCAFFOLD
    return BlocConsumer<ProfileCubit, ProfileState>(
      builder: (context, state) {
        // Profile loading...
        if (state is ProfileLoading) {
          return const Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircularProgressIndicator(), Text("Uploading...")],
              ),
            ),
          );
        } else {
          //edit form
          return builtEditPage();
        }
      },
      listener: (context, state) {
        if (state is ProfileLoaded) {
          Navigator.pop(context);
        }
      },
    );
  }

  Widget builtEditPage({double uploadProgress = 0.0}) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        foregroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          // save button
          IconButton(onPressed: updateProfile, icon: Icon(Icons.upload)),
        ],
      ),
      body: Column(
        children: [
          // profile image

          // bio
          Text("Bio"),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: MyTextField(
              controller: bioTextController,
              hintText: widget.user.bio ?? "Add a bio...",
              obscureText: false,
            ),
          ),
        ],
      ),
    );
  }
}
