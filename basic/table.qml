Item {
    anchors.fill: parent

    Rectangle{
        property color normalColor: "#09221f"

        z: -1
        id: border
        anchors.fill: parent
        anchors.topMargin: button.height/2 
        radius: 3
        color: normalColor
        border.width: 1
        border.color: "white"

    }

    Rectangle{
        property color normalColor: "#029626"
        property color hoverColor: "#048125"
        property color pressedColor: "#065F1E"

        id: button
        width: parent.width * 5/8
        height: parent.height * 2/15
        anchors.top: parent.top
        anchors.horizontalCenter: reset_but.horizontalCenter
        radius: 3
        color: normalColor

        Text {
            text: "START"
            anchors.centerIn: parent
            color: "white"
            font.family: "Sans-Serif"
            font.bold: true
            font.pixelSize: parent.height * 0.7
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