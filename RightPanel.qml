import QtQuick
import QtQuick.Layouts
import "front_RightPanel"

Item {
    id: right_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: right_panel.height*0.01

        Item { Layout.fillHeight: true }
        Rectangle {
            id: company
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.04
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            color: "transparent"

            BorderImage {
                anchors.fill: parent
                source: "pics/logo.png"
                antialiasing: true
                cache: true
                border{
                    left: 1; right: 1; top: 1; bottom: 1
                }
            }
        }
        Clock {
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.09
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            Layout.topMargin: parent.height*0.02
        }
        Date {
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.09
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            Layout.topMargin: parent.height*0.02
        }
        NegatoScope {
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.08
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            Layout.topMargin: parent.height*0.02
        }
        NotesResault {
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.08
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            Layout.topMargin: parent.height*0.02
        }
        PowerBut {
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.08
            Layout.leftMargin: parent.width*0.2
            Layout.rightMargin: parent.width*0.2
            Layout.topMargin: parent.height*0.02
        }
        Item { Layout.preferredHeight: right_panel.height*0.12 }
        RowLayout {
            Item { Layout.fillWidth: true }
            NextBut {
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
            }
            Item { Layout.fillWidth: true }
        }
        Item { Layout.preferredHeight: right_panel.height*0.14 }
    }
}
