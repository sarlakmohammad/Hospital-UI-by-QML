import QtQuick
import QtQuick.Window
import QtQuick.Layouts

Window {
    id: root
    visible: true
    width: 840
    height: 480
    minimumWidth: 840
    minimumHeight: 480
    // visibility: Window.FullScreen // Minimized, Maximized, FullScreen

    // Maximized need a small delay in ms
    Timer {
        running: true
        interval: 10
        onTriggered: root.visibility = Window.Maximized
    }

    //properties
    property color backgroundColor: "#138e71"
    property double ratio: 84 / 48


    Rectangle {
        id: background
        anchors.fill: parent

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#2E5C5E" }
            GradientStop { position: 1.0; color: "#0A2020" }
        }
    }

    RowLayout {
        anchors.fill: parent

        LeftPanel {
            Layout.preferredWidth: parent.width*0.21
            Layout.fillHeight: true
        }
        MainPanel {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        RightPanel {
            Layout.preferredWidth: parent.width*0.21
            Layout.fillHeight: true
        }
    }
}
