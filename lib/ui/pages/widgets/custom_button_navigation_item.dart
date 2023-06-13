import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp_bwa/cubit/pages_cubit.dart';
import '../../../shared/theme.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomButtonNavigationItem({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PagesCubit>().setPage(index);
      },
      child: BlocBuilder<PagesCubit, int>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Image.asset(
                imageUrl,
                width: 24,
                height: 24,
                color: context.read<PagesCubit>().state == index
                    ? kPrimaryColor
                    : kGreyColor,
              ),
              Container(
                width: 32,
                height: 2,
                decoration: BoxDecoration(
                    color: context.read<PagesCubit>().state == index
                        ? kPrimaryColor
                        : kTransparentColor,
                    borderRadius: BorderRadius.circular(18)),
              )
            ],
          );
        },
      ),
    );
  }
}
