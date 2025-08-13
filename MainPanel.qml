import QtQuick
import QtQuick.Layouts

Item {
    id: main_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: main_panel.height*0.01

        Rectangle {
            id: frame_viewer
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"

            Image {
                id: img
                anchors.fill: parent
                source: "pics/pic.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: pacs_and_his_table
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: routing_conference_archiving_table
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Item { Layout.preferredHeight: main_panel.height*0.14 }
    }
}
