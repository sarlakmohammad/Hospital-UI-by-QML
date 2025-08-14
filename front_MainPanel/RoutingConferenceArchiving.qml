import QtQuick
import QtQuick.Layouts

RowLayout{
    id: rca_table
    spacing: parent.width * 0.03

    property color normalColor: "#40dce1"
    property color hoverColor: "#37bcc0"
    property color pressedColor: "#008c90"

    Rectangle{
        id: routing_but
        radius: 25
        color: normalColor
        border.width: 3
        border.color: "#009985"
        Layout.fillWidth: true
        Layout.preferredHeight: parent.height

        BorderImage{
            anchors.fill: parent
            source: "../pics/Icons/M_Routing.png"
            cache: true
            antialiasing: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: routing_but.color = rca_table.hoverColor
            onExited: routing_but.color = rca_table.normalColor
            onPressed: routing_but.color = rca_table.pressedColor
            onReleased: routing_but.color = rca_table.hoverColor

        }
    }
    Rectangle{
        id: conference_but
        radius: 25
        color: normalColor
        border.width: 3
        border.color: "#009985"
        Layout.fillWidth: true
        Layout.preferredHeight: parent.height

        BorderImage{
            anchors.fill: parent
            source: "../pics/Icons/M_Conference.png"
            cache: true
            antialiasing: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: conference_but.color = rca_table.hoverColor
            onExited: conference_but.color = rca_table.normalColor
            onPressed: conference_but.color = rca_table.pressedColor
            onReleased: conference_but.color = rca_table.hoverColor

        }
    }
    Rectangle{
        id: archiving_but
        radius: 25
        color: normalColor
        border.width: 3
        border.color: "#009985"
        Layout.fillWidth: true
        Layout.preferredHeight: parent.height

        BorderImage{
            anchors.fill: parent
            source: "../pics/Icons/M_Archiving.png"
            cache: true
            antialiasing: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: archiving_but.color = rca_table.hoverColor
            onExited: archiving_but.color = rca_table.normalColor
            onPressed: archiving_but.color = rca_table.pressedColor
            onReleased: archiving_but.color = rca_table.hoverColor

        }
    }
}
