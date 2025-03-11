import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:myapp/features/home/presentation/components/my_drawer.dart';
import 'package:myapp/features/post/presentation/components/post_tile.dart';
import 'package:myapp/features/post/presentation/cubits/post_cubit.dart';
import 'package:myapp/features/post/presentation/cubits/post_states.dart';
import 'package:myapp/features/post/presentation/pages/upload_post_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  post cubit
  late final postCubit = context.read<PostCubit>();

  //  on startup
  @override
  void initState() {
    super.initState();

    //  fetch all posts
    fetchAllPosts();
  }

  void fetchAllPosts() {
    postCubit.fetchAllPosts();
  }

  void deletePost(String postId) {
    postCubit.deletePost(postId);
    fetchAllPosts();
  }

  //  BUILD UI
  @override
  Widget build(BuildContext context) {
    //  SCAFFOLD
    return Scaffold(
      //  APP BAR
      appBar: AppBar(
        title: Text("Home"),
        foregroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          //  upload new post button
          IconButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UploadPostPage(),
                  ),
                ),
            icon: const Icon(Icons.add),
          ),
        ],
      ),

      //  DRAWER
      drawer: MyDrawer(),

      // BODY
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          //  loading...
          if (state is PostsLoading && state is PostUploading) {
            return const Center(child: CircularProgressIndicator());
          }
          // loaded
          else if (state is PostsLoaded) {
            final allPosts = state.posts;

            if (allPosts.isEmpty) {
              return const Center(child: Text("No posts availible"));
            }

            return ListView.builder(
              itemCount: allPosts.length,
              itemBuilder: (context, index) {
                //  get individual post
                final post = allPosts[index];

                //  image
                return PostTile(
                  post: post,
                  onDeletePressed: () => deletePost(post.id),
                );
              },
            );
          }
          // uploading
          else if (state is PostsError) {
            return Center(child: Text(state.message));
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
