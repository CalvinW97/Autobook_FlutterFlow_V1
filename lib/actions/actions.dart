import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

/// Grab user data from supabase profiles table
Future syncUserSession(BuildContext context) async {
  List<ProfilesRow>? userRow;

  userRow = await ProfilesTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      currentUserUid,
    ),
  );
  if (((userRow).isNotEmpty) == true) {
    FFAppState().updateProfileDataStruct(
      (e) => e
        ..firstName = userRow?.firstOrNull?.fullName
        ..role = userRow?.firstOrNull?.role
        ..garageID = userRow?.firstOrNull?.garageId,
    );
    return;
  } else {
    return;
  }
}
