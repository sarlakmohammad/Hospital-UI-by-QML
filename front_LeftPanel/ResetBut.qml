import QtQuick

Rectangle{
    id: reset_but
    property color normalColor: "white"
    property color hoverColor: "#E0E0E0"
    property color pressedColor: "#A0A0A0"

    radius: 3
    color: normalColor

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/L_Reset.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true

        onEntered: reset_but.color = hoverColor
        onExited: reset_but.color = normalColor
        onPressed: reset_but.color = pressedColor
        onReleased: reset_but.color = hoverColor

    }
}
