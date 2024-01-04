import '../filter_bottomsheet/widgets/fiftyfive_item_widget.dart';
import '../filter_bottomsheet/widgets/jobs_item_widget.dart';
import 'bloc/filter_bloc.dart';
import 'models/fiftyfive_item_model.dart';
import 'models/filter_model.dart';
import 'models/jobs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_elevated_button.dart';

class FilterBottomsheet extends StatelessWidget {
  const FilterBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterBloc>(
        create: (context) =>
            FilterBloc(FilterState(filterModelObj: FilterModel()))
              ..add(FilterInitialEvent()),
        child: FilterBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
        decoration: AppDecoration.background
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildCloseRow(context),
          SizedBox(height: 29.v),
          _buildDesignCreativeColumn(context),
          SizedBox(height: 26.v),
          _buildSalariesColumn(context),
          SizedBox(height: 28.v),
          _buildJobsColumn(context),
          SizedBox(height: 30.v),
          CustomElevatedButton(
              text: "lbl_apply_filter".tr,
              onPressed: () {
                onTapApplyFilter(context);
              }),
          SizedBox(height: 15.v)
        ]));
  }

  /// Section Widget
  Widget _buildCloseRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgComponent1Primary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          onTap: () {
            onTapImgClose(context);
          }),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_filter".tr, style: CustomTextStyles.titleMedium18)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
          child: Text("lbl_reset_filters".tr,
              style: CustomTextStyles.titleSmallDeeporangeA200))
    ]);
  }

  /// Section Widget
  Widget _buildDesignCreativeColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("lbl_categories".tr,
                  style: CustomTextStyles.titleMediumBold_1)),
          SizedBox(height: 14.v),
          BlocSelector<FilterBloc, FilterState, FilterModel?>(
              selector: (state) => state.filterModelObj,
              builder: (context, filterModelObj) {
                return Wrap(
                    runSpacing: 16.v,
                    spacing: 16.h,
                    children: List<Widget>.generate(
                        filterModelObj?.fiftyfiveItemList.length ?? 0, (index) {
                      FiftyfiveItemModel model =
                          filterModelObj?.fiftyfiveItemList[index] ??
                              FiftyfiveItemModel();
                      return FiftyfiveItemWidget(model,
                          onSelectedChipView: (value) {
                        context.read<FilterBloc>().add(UpdateChipViewEvent(
                            index: index, isSelected: value));
                      });
                    }));
              })
        ]));
  }

  /// Section Widget
  Widget _buildSalariesColumn(BuildContext context) {
    return Column(children: [
      _buildPrice(context,
          priceText1: "lbl_salaries".tr, priceText2: "lbl_6_000_month".tr),
      SizedBox(height: 16.v),
      SliderTheme(
          data: SliderThemeData(
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: appTheme.deepOrangeA200,
              inactiveTrackColor: appTheme.gray100,
              thumbColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              thumbShape: RoundSliderThumbShape()),
          child: Slider(
              value: 52.91, min: 0.0, max: 100.0, onChanged: (value) {})),
      SizedBox(height: 2.v),
      _buildPrice(context,
          priceText1: "lbl_560".tr, priceText2: "lbl_12_000".tr)
    ]);
  }

  /// Section Widget
  Widget _buildJobsColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_jobs".tr, style: CustomTextStyles.titleMediumBold_1),
          SizedBox(height: 16.v),
          BlocSelector<FilterBloc, FilterState, FilterModel?>(
              selector: (state) => state.filterModelObj,
              builder: (context, filterModelObj) {
                return Wrap(
                    runSpacing: 16.v,
                    spacing: 16.h,
                    children: List<Widget>.generate(
                        filterModelObj?.jobsItemList.length ?? 0, (index) {
                      JobsItemModel model =
                          filterModelObj?.jobsItemList[index] ??
                              JobsItemModel();
                      return JobsItemWidget(model, onSelectedChipView: (value) {
                        context.read<FilterBloc>().add(UpdateChipView1Event(
                            index: index, isSelected: value));
                      });
                    }));
              })
        ]));
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
    required String priceText1,
    required String priceText2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(priceText1,
          style: CustomTextStyles.labelLargeSemiBold
              .copyWith(color: appTheme.blueGray400)),
      Text(priceText2,
          style: CustomTextStyles.labelLargeSemiBold
              .copyWith(color: appTheme.blueGray400))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapApplyFilter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
