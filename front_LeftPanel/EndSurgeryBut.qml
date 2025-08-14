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
        border{
            left: 4; right: 4; top: 4; bottom: 4
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
