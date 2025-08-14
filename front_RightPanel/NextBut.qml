import QtQuick

Rectangle{
    id: back_but
    color: "transparent"

    property url normalSource:  "../pics/Icons/R_Next.png"
    property url hoverSource:   "../pics/Icons/R_Next_Hover.png"
    property url pressedSource: "../pics/Icons/R_Next_Pressed.png"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
    }


    Image {
        id: img
        anchors.fill: parent
        source: mouseArea.pressed ? pressedSource
              : mouseArea.containsMouse ? hoverSource
              : normalSource

        antialiasing: true
        cache: true
        fillMode: Image.PreserveAspectCrop

        Behavior on opacity { NumberAnimation { duration: 120 } }
    }
}
