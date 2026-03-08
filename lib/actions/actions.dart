import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

/// Grab user data from supabase profiles table
Future syncUserSession(BuildContext context) async {
  List<ProfilesRow>? userRow;
  List<VehiclesRow>? returnedVehicls;
  List<GarageStaffRow>? staffRow;

  userRow = await ProfilesTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      currentUserUid,
    ),
  );
  if (((userRow).isNotEmpty) == true) {
    FFAppState().updateProfileDataStruct(
      (e) => e
        ..firstName = userRow?.firstOrNull?.firstName
        ..role = userRow?.firstOrNull?.type
        ..lastName = userRow?.firstOrNull?.lastName
        ..latitude = userRow?.firstOrNull?.latitude
        ..longitude = userRow?.firstOrNull?.longitude
        ..email = userRow?.firstOrNull?.email,
    );
    if (FFAppState().ProfileData.role == 'DRIVER') {
      returnedVehicls = await VehiclesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'owner_id',
          currentUserUid,
        ),
      );
      FFAppState().userVehicle = returnedVehicls.firstOrNull!.id;
    } else {
      if ((FFAppState().ProfileData.role == 'ADMIN') ||
          (FFAppState().ProfileData.role == 'STAFF')) {
        staffRow = await GarageStaffTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'user_id',
            currentUserUid,
          ),
        );
      } else {
        return;
      }

      FFAppState().ProfileData = ProfileDataStructStruct(
        garageID: staffRow.firstOrNull?.garageId,
      );
    }

    return;
  } else {
    return;
  }
}
