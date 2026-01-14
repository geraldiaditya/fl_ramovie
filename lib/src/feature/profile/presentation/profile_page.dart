import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/core/route/ratix_router.dart';
import 'package:ra_movie/src/provider/auth/auth_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tx = context.txTheme();
    final cs = context.cs();
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Profile", style: tx.titleLarge)),
          SizedBox(height: 8.h),
          Container(
            width: 64.dg,
            height: 64.dg,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
          Text(
            "Geraldi Aditya",
            style: tx.titleLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            "dev.geraldi@gmail.com",
            style: tx.bodyLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            "Member sejak 1999",
            style: tx.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 8,
                children: [
                  buildButtonMenu(
                    tx,
                    iconData: Icons.edit_outlined,
                    text: 'Edit Profile',
                  ),
                  buildButtonMenu(
                    tx,
                    iconData: Icons.local_movies_outlined,
                    text: 'Riwayat Pembelian',
                  ),
                  buildButtonMenu(
                    tx,
                    iconData: Icons.notifications_none_rounded,
                    text: 'Pengaturan Notifikasi',
                  ),
                  buildButtonMenu(
                    tx,
                    iconData: Icons.security,
                    text: 'Pengaturan Keamanan',
                  ),
                  buildButtonMenu(
                    tx,
                    iconData: Icons.help_outline_outlined,
                    text: 'Pusat Bantuan',
                  ),
                  SizedBox(height: 16.h),
                  ElevatedButton.icon(
                    onPressed: () async {
                      await ref.read(isAuthProvider.notifier).doLogout();
                      if (context.mounted) {
                        LoginRoute().replace(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cs.surface,
                      side: BorderSide(color: cs.error, width: 2.dg),
                      foregroundColor: cs.error,
                      iconSize: 18.dg,
                      textStyle: tx.titleLarge,
                      padding: EdgeInsets.all(8.dg),
                    ),
                    label: Text("Keluar"),
                    icon: Icon(Icons.exit_to_app),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildButtonMenu(
    TextTheme tx, {
    required IconData iconData,
    required String text,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Row(
        spacing: 16.w,
        children: [
          Icon(iconData, size: 20.dg),
          Expanded(child: Text(text, style: tx.titleMedium)),
          Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}
