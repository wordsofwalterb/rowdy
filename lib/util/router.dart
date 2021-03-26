import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/screens/create_post_screen.dart';
import 'package:rowdy/screens/feed_screen.dart';
import 'package:rowdy/screens/home_screen.dart';
import 'package:rowdy/screens/lost_password_screen.dart';
import 'package:rowdy/screens/profile_screen.dart';
import 'package:rowdy/screens/settings_overview_screen.dart';

/// Static Namespace for routes
class FFRoutes {
  static const String home = '/';
  static const String feed = 'feed';
  static const String profile = 'profile';
  static const String editProfile = 'editProfile';
  static const String createPost = 'createPost';
  static const String chatDetail = 'chatDetail';
  static const String postComments = 'postComments';
  static const String authenticationSettings = 'authenticationSettings';
  static const String settingsOverview = 'settingsOverview';
  static const String lostPassword = 'lostPassword';
}

/// Correlates routes names to builders
class FFRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case FFRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case FFRoutes.feed:
        return MaterialPageRoute(
            builder: (_) => PostFeedScreen(args as ScrollController));
      case FFRoutes.lostPassword:
        return MaterialPageRoute(builder: (_) => LostPasswordScreen());
      // case FFRoutes.authenticationSettings:
      //   return MaterialPageRoute(
      //       builder: (_) => AuthenticationSettingsScreen());
      // case FFRoutes.settingsOverview:
      //   return MaterialPageRoute(builder: (_) => SettingsOverviewScreen());
      case FFRoutes.postComments:
        throw Exception('Invalid arguments for ${settings.name}');

      case FFRoutes.profile:
        return MaterialPageRoute(
            builder: (_) => ProfileWrapper(studentId: args as String));

      case FFRoutes.createPost:
        return MaterialPageRoute(builder: (_) => CreatePostScreen());

      // case FFRoutes.editProfile:
      //   return MaterialPageRoute(
      //     builder: (_) => EditProfileScreen(),
      //   );
      //   break;
      // case FFRoutes.chatDetail:
      //   return MaterialPageRoute(
      //     builder: (_) => ChatDetailScreen(),
      //   );
      default:
        return _errorRoute(settings);
    }
  }

// // Moved route generation to this section for brevity in previous section

//   static Route<dynamic> _postCommentsRoute(PostCommentsArgs args) {
//     return MaterialPageRoute(
//       builder: (context) => BlocProvider<CommentsBloc>(
//         create: (context) => CommentsBloc(
//           args.post.id,
//           commentRepository: FirebaseCommentsRepository(),
//         ),
//         child: BlocProvider.value(
//           value: args.postsBloc,
//           child: CommentScreen(args.post),
//         ),
//       ),
//     );
//   }

//   static Route<dynamic> _createPostRoute(PostsBloc bloc) {
//     return MaterialPageRoute(
//       builder: (context) => BlocProvider.value(
//         value: bloc,
//         child: CreatePostScreen(),
//       ),
//     );
//   }

//   static Route<dynamic> _editProfileRoute(ProfileInfoBloc bloc) {
//     return MaterialPageRoute(
//       builder: (context) => BlocProvider.value(
//         value: bloc,
//         child: EditProfileScreen(),
//       ),
//     );
//   }

//   static Route<dynamic> _profileRoute(ProfileArgs args) {
//     return MaterialPageRoute(
//       builder: (context) => BlocProvider(
//         create: (BuildContext context) => ProfileInfoBloc(
//           args.userId,
//           repository: FirebaseStudentRepository(),
//         )..add(const LoadProfile()),
//         child: ProfileScreen(isCurrentUser: args.isCurrentUser),
//       ),
//     );
//   }

  static Route<dynamic> _errorRoute(dynamic settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}

//Arguement Classes

// class ProfileArgs {
//   final String userId;
//   final bool isCurrentUser;

//   /// Arguements must not be null, isCurrentUser defaults to false
//   const ProfileArgs(this.userId, {this.isCurrentUser = false})
//       : assert(userId != null),
//         assert(isCurrentUser != null);
// }

// class PostCommentsArgs {
//   final PostsBloc postsBloc;
//   final Post post;

//   const PostCommentsArgs(this.postsBloc, this.post);
// }
