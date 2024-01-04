import '../bloc/home_bloc.dart';
import '../models/eightyeight_item_model.dart';
import '../models/fulltime3_item_model.dart';
import 'fulltime3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class EightyeightItemWidget extends StatelessWidget {
  EightyeightItemWidget(
    this.eightyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightyeightItemModel eightyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
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
                  imagePath: ImageConstant.imgSettings,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                eightyeightItemModelObj.digitalMarketing!,
                                style: CustomTextStyles.titleMediumBold_1,
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                eightyeightItemModelObj.motorola!,
                                style: CustomTextStyles.labelLargeGray500,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgComponent3,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 22.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      eightyeightItemModelObj.price!,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 13.v),
                    Wrap(
                      runSpacing: 8.v,
                      spacing: 8.h,
                      children: List<Widget>.generate(
                        eightyeightItemModelObj?.fulltime3ItemList.length ?? 0,
                        (index) {
                          Fulltime3ItemModel model = eightyeightItemModelObj
                                  ?.fulltime3ItemList[index] ??
                              Fulltime3ItemModel();

                          return Fulltime3ItemWidget(
                            model,
                            onSelectedChipView: (value) {
                              context.read<HomeBloc>().add(UpdateChipView1Event(
                                  index: index, isSelected: value));
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
