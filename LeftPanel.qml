import QtQuick
import QtQuick.Layouts

Item {
    id: left_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: left_panel.height*0.01

        Item { Layout.fillHeight: true }
        Rectangle {
            id: reset
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: start_and_pause_table
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.3
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: end_surery
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Item { Layout.fillHeight: true }
        RowLayout {
            Item { Layout.fillWidth: true }
            Rectangle {
                id: back_itm
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
                color: "transparent"
                border.width: 2
            }
            Item { Layout.fillWidth: true }
        }

        Item { Layout.preferredHeight: left_panel.height*0.14 }
    }
}
