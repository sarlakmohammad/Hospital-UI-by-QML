import QtQuick
import QtQuick.Layouts
import "front_LeftPanel"

Item {
    id: left_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: left_panel.height*0.01

        Item { Layout.fillHeight: true }
        ResetBut {
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.05
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
        }
        StartTable {
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.33
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            Layout.topMargin: parent.height*0.03
            Layout.bottomMargin: parent.height*0.02
        }
        EndSurgeryBut {
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.08
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
        }
        Item { Layout.fillHeight: true }
        RowLayout {
            Item { Layout.fillWidth: true }
            BackBut {
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
            }
            Item { Layout.fillWidth: true }
        }

        Item { Layout.preferredHeight: left_panel.height*0.14 }
    }
}
