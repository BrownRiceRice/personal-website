import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:personal_website/Home/home_component.dart';
import 'package:personal_website/CircleDrawer/circle_drawer_component.dart';
import 'package:personal_website/Logo/logo_component.dart';
import 'package:personal_website/OculusHack/oculus_hack_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(
      path: '/home',
      name: 'Home',
      component: HomeComponent,
      useAsDefault: true),
  const Route(
      path: '/circles', name: 'Circles', component: CircleDrawerComponent),
  const Route(path: '/logo', name: 'Logo', component: LogoComponent),
  const Route(
      path: '/ovr-hr', name: 'OculusHackRice', component: OculusHackComponent),
])
class AppComponent {
  Router router;
  AppComponent(this.router);
}
