import 'package:wearapp/repositories/available_devices/available_devices_cubit.dart';
import 'package:wearapp/repositories/bitalino/bitalino_cubit.dart';
import 'package:wearapp/repositories/bluetooth_devices/bluetooth_devices_cubit.dart';
import 'package:wearapp/repositories/connected_device/connected_device_cubit.dart';
import 'package:wearapp/repositories/measurment/measurment_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ProviderContainer extends StatefulWidget {
  final Widget child;

  ProviderContainer({Key key, @required this.child});

  @override
  State<StatefulWidget> createState() => ProviderContainerState();
}

class ProviderContainerState extends State<ProviderContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectedDeviceCubit>(create: (context) => ConnectedDeviceCubit(context)),
        BlocProvider<AvailableDevicesCubit>(
          create: (context) => AvailableDevicesCubit(context),
        ),
        BlocProvider<MeasurmentCubit>(
          create: (context) => MeasurmentCubit(context),
        ),
        BlocProvider<BluetoothDevicesCubit>(
          create: (context) => BluetoothDevicesCubit(context),
        ),
        BlocProvider<BitalinoCubit>(
          create: (context) => BitalinoCubit(context),
        ),
      ],
      child: widget.child,
    );
  }
}
