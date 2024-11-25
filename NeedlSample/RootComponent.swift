import NeedleFoundation

class RootComponent: BootstrapComponent {

    var appComponent: AppComponent {
        shared {
            return AppComponent(parent: self)
        }
    }
}
