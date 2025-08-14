import QtQuick
import QtQuick.Layouts
import "front_MainPanel"

Item {
    id: main_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: main_panel.height*0.01

        Rectangle {
            id: frame_viewer
            Layout.fillWidth: true
            // Layout.fillHeight: true
            Layout.preferredHeight: main_panel.height*0.56
            color: "transparent"

            Image {
                id: img
                anchors.fill: parent
                source: "pics/pic.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        PacsHis {
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.1
            Layout.topMargin: main_panel.height*0.03
        }
        RoutingConferenceArchiving {
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.1
            Layout.topMargin: main_panel.height*0.03
        }
        Item { Layout.preferredHeight: main_panel.height*0.07 }
    }
}
