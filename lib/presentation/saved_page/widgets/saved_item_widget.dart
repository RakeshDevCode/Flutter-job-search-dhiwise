import '../bloc/saved_bloc.dart';
import '../models/fulltime7_item_model.dart';
import '../models/saved_item_model.dart';
import 'fulltime7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SavedItemWidget extends StatelessWidget {
  SavedItemWidget(
    this.savedItemModelObj, {
    Key? key,
    this.onTapBag,
  }) : super(
          key: key,
        );

  SavedItemModel savedItemModelObj;

  VoidCallback? onTapBag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBag!.call();
      },
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 67.v,
              ),
              child: CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(8.h),
                child: CustomImageView(
                  imagePath: savedItemModelObj?.bag,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    savedItemModelObj.digitalMarketing!,
                    style: CustomTextStyles.titleMediumBold_1,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    savedItemModelObj.motorola!,
                    style: CustomTextStyles.labelLargeGray500,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    savedItemModelObj.price!,
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 13.v),
                  Wrap(
                    runSpacing: 8.v,
                    spacing: 8.h,
                    children: List<Widget>.generate(
                      savedItemModelObj?.fulltime7ItemList.length ?? 0,
                      (index) {
                        Fulltime7ItemModel model =
                            savedItemModelObj?.fulltime7ItemList[index] ??
                                Fulltime7ItemModel();

                        return Fulltime7ItemWidget(
                          model,
                          onSelectedChipView: (value) {
                            context.read<SavedBloc>().add(UpdateChipViewEvent(
                                index: index, isSelected: value));
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgComponent3,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 30.h,
                bottom: 92.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
