import '../models/fiftyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FiftyfiveItemWidget extends StatelessWidget {
  FiftyfiveItemWidget(
    this.fiftyfiveItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FiftyfiveItemModel fiftyfiveItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 14.v,
        right: 16.h,
        bottom: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        fiftyfiveItemModelObj.categories!,
        style: TextStyle(
          color: (fiftyfiveItemModelObj.isSelected ?? false)
              ? theme.colorScheme.onPrimaryContainer.withOpacity(1)
              : theme.colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
        height: 18.adaptSize,
        width: 18.adaptSize,
        margin: EdgeInsets.only(right: 5.h),
      ),
      selected: (fiftyfiveItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      selectedColor: appTheme.deepOrangeA200,
      shape: (fiftyfiveItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                22.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                22.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
