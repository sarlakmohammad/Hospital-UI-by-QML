import QtQuick

Rectangle{
    id: clock
    color: "transparent"

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/R_DateWithoutNumbers.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }
    }

    Text {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: parent.height * 0.08
        text: "2025/01/01"
        font.pixelSize: parent.height * 0.33
        font.bold: true
        color: "white"
    }
}
