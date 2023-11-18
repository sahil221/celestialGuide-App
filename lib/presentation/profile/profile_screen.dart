import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../application/profile/profile_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/storage_services/theme_storage_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier = Provider.of<AppStateNotifier>(
      context,
    );
    return BlocProvider(
      create: (context) =>
          ProfileBloc(ProfileState.initial(appStateNotifier: appStateNotifier)),
      child: const ProfileScreenConsumer(),
    );
  }
}

class ProfileScreenConsumer extends StatelessWidget {
  const ProfileScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.tertiaryContainer,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              ProfileScreenConstants.profile,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    fontSize: 17.sp,
                  ),
            ),
          ),
          body: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 12.w,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Text(
                        'GU',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 22.sp,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    ProfileScreenConstants.guestUser,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 1.h,
                  ),
                  MenuOptions(
                    icon: state.isDarkModeSelected
                        ? Icons.wb_sunny_outlined
                        : Icons.dark_mode_rounded,
                    title: state.isDarkModeSelected
                        ? ProfileScreenConstants.lightMode
                        : ProfileScreenConstants.darkMode,
                    subTitle: state.isDarkModeSelected
                        ? ProfileScreenConstants.aboutLightMode
                        : ProfileScreenConstants.aboutDarkMode,
                    trailing: Switch(
                      value: state.isDarkModeSelected,
                      onChanged: (value) {
                        ThemesStorageService.updateIsDarkThemeSelected(
                            isDarkThemeSelected: !state.isDarkModeSelected);
                        Provider.of<AppStateNotifier>(context, listen: false)
                            .updateAfterThemeModeChange(
                                isDarkModeSelected: !state.isDarkModeSelected);
                        context.read<ProfileBloc>().add(
                              ProfileEvent.emitFromAnywhere(
                                state: state.copyWith(
                                  isDarkModeSelected: !state.isDarkModeSelected,
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                  MenuOptions(
                    icon: Icons.person_add_alt_1,
                    title: ProfileScreenConstants.joinUs,
                    subTitle: ProfileScreenConstants.abtJoinUs,
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18.sp,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ],
              )),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class MenuOptions extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final Widget trailing;
  Function()? onTap;
  MenuOptions({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      visualDensity: const VisualDensity(
        horizontal: -3,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 17.sp,
              color: Theme.of(context).colorScheme.tertiaryContainer,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 16.sp,
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              height: 1.5,
            ),
      ),
      trailing: trailing,
    );
  }
}
