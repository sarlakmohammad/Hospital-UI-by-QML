import QtQuick

Item {
    id: start_table

    Rectangle{
        z: -1
        id: border
        anchors.fill: parent
        anchors.topMargin: button.height/2
        radius: 3
        color: "#09221f"
        border.width: 1
        border.color: "white"

    }

    Rectangle{
        property color normalColor: "#029626"
        property color hoverColor: "#048125"
        property color pressedColor: "#065F1E"

        id: button
        width: parent.width * 5/7
        height: parent.height * 0.15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 3
        color: normalColor

        BorderImage {
            id: img
            anchors.fill: parent
            source: "../pics/Icons/L_Start.png"
            cache: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: button.color = button.hoverColor
            onExited: button.color = button.normalColor
            onPressed: button.color = button.pressedColor
            onReleased: button.color = button.hoverColor

        }
    }
}
