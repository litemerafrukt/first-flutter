import 'package:flutter/material.dart';

import 'package:map/pages/animated_map_controller.dart';
import 'package:map/pages/circle.dart';
import 'package:map/pages/custom_crs/custom_crs.dart';
import 'package:map/pages/epsg3413_crs.dart';
import 'package:map/pages/epsg4326_crs.dart';
import 'package:map/pages/esri.dart';
import 'package:map/pages/home.dart';
import 'package:map/pages/interactive_test_page.dart';
import 'package:map/pages/latlng_to_screen_point.dart';
import 'package:map/pages/many_markers.dart';
import 'package:map/pages/map_inside_listview.dart';
import 'package:map/pages/marker_anchor.dart';
import 'package:map/pages/marker_rotate.dart';
import 'package:map/pages/max_bounds.dart';
import 'package:map/pages/moving_markers.dart';
import 'package:map/pages/network_tile_provider.dart';
import 'package:map/pages/offline_map.dart';
import 'package:map/pages/on_tap.dart';
import 'package:map/pages/overlay_image.dart';
import 'package:map/pages/plugin_scalebar.dart';
import 'package:map/pages/plugin_zoombuttons.dart';
import 'package:map/pages/point_to_latlng.dart';
import 'package:map/pages/polygon.dart';
import 'package:map/pages/polyline.dart';
import 'package:map/pages/reset_tile_layer.dart';
import 'package:map/pages/sliding_map.dart';
import 'package:map/pages/stateful_markers.dart';
import 'package:map/pages/tap_to_add.dart';
import 'package:map/pages/tile_builder_example.dart';
import 'package:map/pages/tile_loading_error_handle.dart';
import 'package:map/pages/widgets.dart';
import 'package:map/pages/wms_tile_layer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map Example',
      theme: ThemeData(
        primarySwatch: mapBoxBlue,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        NetworkTileProviderPage.route: (context) =>
            const NetworkTileProviderPage(),
        WidgetsPage.route: (context) => const WidgetsPage(),
        TapToAddPage.route: (context) => const TapToAddPage(),
        EsriPage.route: (context) => const EsriPage(),
        PolylinePage.route: (context) => const PolylinePage(),
        AnimatedMapControllerPage.route: (context) =>
            const AnimatedMapControllerPage(),
        MarkerAnchorPage.route: (context) => const MarkerAnchorPage(),
        PluginScaleBar.route: (context) => const PluginScaleBar(),
        PluginZoomButtons.route: (context) => const PluginZoomButtons(),
        OfflineMapPage.route: (context) => const OfflineMapPage(),
        OnTapPage.route: (context) => const OnTapPage(),
        MarkerRotatePage.route: (context) => const MarkerRotatePage(),
        MovingMarkersPage.route: (context) => const MovingMarkersPage(),
        CirclePage.route: (context) => const CirclePage(),
        OverlayImagePage.route: (context) => const OverlayImagePage(),
        PolygonPage.route: (context) => const PolygonPage(),
        SlidingMapPage.route: (_) => const SlidingMapPage(),
        WMSLayerPage.route: (context) => const WMSLayerPage(),
        CustomCrsPage.route: (context) => const CustomCrsPage(),
        TileLoadingErrorHandle.route: (context) =>
            const TileLoadingErrorHandle(),
        TileBuilderPage.route: (context) => const TileBuilderPage(),
        InteractiveTestPage.route: (context) => const InteractiveTestPage(),
        ManyMarkersPage.route: (context) => const ManyMarkersPage(),
        StatefulMarkersPage.route: (context) => const StatefulMarkersPage(),
        MapInsideListViewPage.route: (context) => const MapInsideListViewPage(),
        ResetTileLayerPage.route: (context) => const ResetTileLayerPage(),
        EPSG4326Page.route: (context) => const EPSG4326Page(),
        EPSG3413Page.route: (context) => const EPSG3413Page(),
        MaxBoundsPage.route: (context) => const MaxBoundsPage(),
        PointToLatLngPage.route: (context) => const PointToLatLngPage(),
        LatLngScreenPointTestPage.route: (context) =>
            const LatLngScreenPointTestPage(),
      },
    );
  }
}

// Generated using Material Design Palette/Theme Generator
// http://mcg.mbitson.com/
// https://github.com/mbitson/mcg
const int _bluePrimary = 0xFF395afa;
const MaterialColor mapBoxBlue = MaterialColor(
  _bluePrimary,
  <int, Color>{
    50: Color(0xFFE7EBFE),
    100: Color(0xFFC4CEFE),
    200: Color(0xFF9CADFD),
    300: Color(0xFF748CFC),
    400: Color(0xFF5773FB),
    500: Color(_bluePrimary),
    600: Color(0xFF3352F9),
    700: Color(0xFF2C48F9),
    800: Color(0xFF243FF8),
    900: Color(0xFF172EF6),
  },
);
