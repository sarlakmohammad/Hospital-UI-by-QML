import QtQuick

Column {
    id: root
    anchors.fill: parent
    spacing: root.height * 1/12

    // RESET Button
    Rectangle{
        property color normalColor: "white"
        property color hoverColor: "#E0E0E0"
        property color pressedColor: "#A0A0A0"
        property color currentColor: normalColor

        id: reset_but
        width: parent.width
        height: parent.height * 1/12
        // anchors.margins: 10
        radius: 3
        color: normalColor

        Text {
            text: "RESET"
            anchors.centerIn: parent
            color: "#09221f"
            font.family: "Sans-Serif"
            font.pixelSize: parent.height * 0.8
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: reset_but.color = reset_but.hoverColor
            onExited: reset_but.color = reset_but.normalColor
            onPressed: reset_but.color = reset_but.pressedColor
            onReleased: reset_but.color = reset_but.hoverColor

        }
    }
    // START Button with background layer
    Item {
        width: parent.width
        height: parent.height * 10/12

        Rectangle{
            id: border
            z: -1
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
            width: root.width * 5/8
            height: root.height * 2/15
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            radius: 3
            color: normalColor

            Text {
                text: "START"
                anchors.centerIn: parent
                color: "white"
                font.family: "Sans-Serif"
                font.bold: true
                font.pixelSize: parent.height * 0.5
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
}
