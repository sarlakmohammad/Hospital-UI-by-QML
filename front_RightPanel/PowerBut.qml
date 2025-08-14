import QtQuick

Rectangle{
    id: power_but
    property color normalColor: "#d0010b"
    property color hoverColor: "#B20006"
    property color pressedColor: "#840A0E"

    radius: 3
    color: normalColor
    border.width: 2

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/R_Power.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }

    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true

        onEntered: power_but.color = hoverColor
        onExited: power_but.color = normalColor
        onPressed: power_but.color = pressedColor
        onReleased: power_but.color = hoverColor

    }
}
