import QtQuick
import QtQuick.Layouts

RowLayout{
    id: pacs_and_his_table
    spacing: parent.width * 0.03

    property color normalColor: "#002627"
    property color hoverColor: "#084b4d"
    property color pressedColor: "#001011"

    Rectangle{
        id: pacs_but
        radius: 25
        color: normalColor
        Layout.fillWidth: true
        Layout.preferredHeight: parent.height

        BorderImage{
            anchors.fill: parent
            source: "../pics/Icons/M_PACS.png"
            cache: true
            antialiasing: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: pacs_but.color = pacs_and_his_table.hoverColor
            onExited: pacs_but.color = pacs_and_his_table.normalColor
            onPressed: pacs_but.color = pacs_and_his_table.pressedColor
            onReleased: pacs_but.color = pacs_and_his_table.hoverColor

        }
    }
    Rectangle{
        id: his_but
        radius: 25
        color: normalColor
        Layout.fillWidth: true
        Layout.preferredHeight: parent.height

        BorderImage{
            anchors.fill: parent
            source: "../pics/Icons/M_HIS.png"
            cache: true
            antialiasing: true
            border{
                left: 1; right: 1; top: 1; bottom: 1
            }
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onEntered: his_but.color = pacs_and_his_table.hoverColor
            onExited: his_but.color = pacs_and_his_table.normalColor
            onPressed: his_but.color = pacs_and_his_table.pressedColor
            onReleased: his_but.color = pacs_and_his_table.hoverColor

        }
    }

}
