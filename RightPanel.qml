import QtQuick
import QtQuick.Layouts

Item {
    id: right_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: right_panel.height*0.01

        Item { Layout.fillHeight: true }
        Rectangle {
            id: company
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: clock
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: date_icon
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: negatoscope
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: notes_result
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: power
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
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
        Item { Layout.preferredHeight: right_panel.height*0.14 }
    }
}
