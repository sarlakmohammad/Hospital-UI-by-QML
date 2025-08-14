import QtQuick

Rectangle{
    id: endSurgery_but
    property color normalColor: "#d0010b"
    property color hoverColor: "#B20006"
    property color pressedColor: "#840A0E"

    radius: 3
    color: normalColor
    border.width: 2

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/L_EndSurgury.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }

    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true

        onEntered: endSurgery_but.color = hoverColor
        onExited: endSurgery_but.color = normalColor
        onPressed: endSurgery_but.color = pressedColor
        onReleased: endSurgery_but.color = hoverColor

    }
}
