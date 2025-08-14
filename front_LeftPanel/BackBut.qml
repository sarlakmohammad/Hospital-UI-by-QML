import QtQuick

Rectangle{
    id: back_but
    color: "transparent"

    property url normalSource:  "../pics/Icons/L_Back.png"
    property url hoverSource:   "../pics/Icons/L_Back_Hover.png"
    property url pressedSource: "../pics/Icons/L_Back_Pressed.png"

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
    // state: [
    //     State {
    //         name: "hovered"
    //         PropertyChanges { target: img; source:"../pics/Icons/L_Back_Hover.png"}
    //     },
    //     State {
    //         name: "pressed"
    //         PropertyChanges { target: img; source:"../pics/Icons/L_Back_Pressed.png"}
    //     }
    // ]
}
