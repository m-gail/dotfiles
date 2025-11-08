import Quickshell
import qs.Config
import qs.Modules.Bar.Components

BarButton {
    color: Colorscheme.foam
    colorHover: Colorscheme.pine
    icon: "fa_rocket.svg"
    onClicked: {
        Quickshell.execDetached(["/home/michael/.local/bin/quickshell", "ipc", "call", "launcher", "toggle"]);
    }
}
