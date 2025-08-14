import QtQuick
import QtQuick.Layouts

Item {
    id: start_table

    //table
    Rectangle{
        z: -1
        id: border
        anchors.fill: parent
        anchors.topMargin: start_but.height/2
        radius: 3
        color: "#09221f"
        border.width: 1
        border.color: "white"

        // content of this table
        ColumnLayout{
            anchors.fill: parent
            anchors.topMargin: start_but.height*0.5

            Text {
                id: start_time
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                text: "00:00:00"
                font.pixelSize: parent.height*0.13
                font.bold: true
                color: "white"
            }

            Rectangle{
                Layout.fillWidth: true
                Layout.leftMargin: parent.width*0.15
                Layout.rightMargin: parent.width*0.15
                Layout.preferredHeight: parent.height*0.4
                color: "transparent"

                Image {
                    id: status_pic
                    source: "../pics/Icons/L_Status.png"
                    anchors.fill: parent
                    antialiasing: true
                    cache: true
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle{
                property color normalColor: "#d0010b"
                property color hoverColor: "#B20006"
                property color pressedColor: "#840A0E"

                id: pause_but
                color: pause_but.normalColor
                Layout.fillWidth: true
                Layout.leftMargin: parent.width*0.15
                Layout.rightMargin: parent.width*0.15
                Layout.preferredHeight: parent.height*0.15

                BorderImage {
                    id: pause_pic
                    anchors.fill: parent
                    source: "../pics/Icons/L_Pause.png"
                    antialiasing: true
                    cache: true
                    border{
                        left: 1; right: 1; top: 1; bottom: 1
                    }
                }

                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true

                    onEntered: pause_but.color = pause_but.hoverColor
                    onExited: pause_but.color = pause_but.normalColor
                    onPressed: pause_but.color = pause_but.pressedColor
                    onReleased: pause_but.color = pause_but.hoverColor
                }
            }

            Text {
                id: pause_time
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: parent.height*0.05
                text: "00:00:00"
                font.pixelSize: parent.height*0.13
                font.bold: true
                color: "white"
            }
        }
    }

    Rectangle{
        id: start_but
        property color normalColor: "#029626"
        property color hoverColor: "#048125"
        property color pressedColor: "#065F1E"

        width: parent.width*5/7
        height: parent.height*0.15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 3
        color: normalColor

        BorderImage {
            id: img
            anchors.fill: parent
            source: "../pics/Icons/L_Start.png"
            cache: true
            antialiasing: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: start_but.color = start_but.hoverColor
            onExited: start_but.color = start_but.normalColor
            onPressed: start_but.color = start_but.pressedColor
            onReleased: start_but.color = start_but.hoverColor

        }
    }
}
