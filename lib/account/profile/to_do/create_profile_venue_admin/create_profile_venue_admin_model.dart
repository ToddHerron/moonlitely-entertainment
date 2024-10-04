import '/account/profile/to_do/edit_profile_auth_2/edit_profile_auth2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_profile_venue_admin_widget.dart'
    show CreateProfileVenueAdminWidget;
import 'package:flutter/material.dart';

class CreateProfileVenueAdminModel
    extends FlutterFlowModel<CreateProfileVenueAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProfile_auth_2 component.
  late EditProfileAuth2Model editProfileAuth2Model;

  @override
  void initState(BuildContext context) {
    editProfileAuth2Model = createModel(context, () => EditProfileAuth2Model());
  }

  @override
  void dispose() {
    editProfileAuth2Model.dispose();
  }
}
