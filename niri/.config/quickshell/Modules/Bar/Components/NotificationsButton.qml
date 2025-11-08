import qs.Config
import qs.Modules.Bar.Components

BarButton {
    property var popup
    color: Colorscheme.subtle
    colorHover: Colorscheme.gold
    icon: "fa_bell.svg"
    onClicked: {
        popup.open = !popup.open
    }
}
