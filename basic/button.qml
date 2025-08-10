Rectangle{
    property color normalColor: "white"
    property color hoverColor: "#E0E0E0"
    property color pressedColor: "#A0A0A0"
    property color currentColor: normalColor

    anchors.top: parent.top
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.margins: 10
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

        onEntered: reset_but.color = hoverColor
        onExited: reset_but.color = normalColor
        onPressed: reset_but.color = pressedColor
        onReleased: reset_but.color = hoverColor

    }
}