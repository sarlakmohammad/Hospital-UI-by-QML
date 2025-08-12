import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Qt5Compat.GraphicalEffects
import "basic"
import "front" as MyComponents

ApplicationWindow {
    property color backgroundColor: "#138e71"
    property double ratio: 64 / 38

    id: root
    visible: true
    minimumWidth: 640
    minimumHeight: 380
    visibility: Window.Maximized
    // customizing the background
    Image{
        anchors.fill: parent
        source: "pics/Back.jpg"
        fillMode: Image.PreserveAspectCrop
    }

    GridLayout{
        id: ui
        anchors.fill: parent
        columns: 7
        rows: 10
        rowSpacing: 0
        columnSpacing: 0

        // row 1
        TransparentRect{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.rowSpan: 2
            Layout.preferredHeight: 6
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        //// pic
        Item{
            Layout.rowSpan: 5
            Layout.preferredHeight: 25
            Layout.preferredWidth: 38
            Layout.fillWidth: true
            Layout.fillHeight: true

            Image {
                id: img
                anchors.fill: parent
                source: "pics/pic.png"
                fillMode: Image.PreserveAspectCrop
                visible: false
            }

            Rectangle {
                id: mask
                anchors.fill: parent
                color: "black"
                radius: 33
                topLeftRadius: 0
                topRightRadius: 0
                antialiasing: true
                visible: false
            }

            OpacityMask {
                anchors.fill: parent
                source: img
                maskSource: mask
                invert: false
                anchors.bottomMargin: 15
                anchors.rightMargin: 2
            }

        }

        TransparentRect{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        // row 2
        //// BOOBARS
        TransparentRect{
            Layout.preferredWidth: 8
            Layout.preferredHeight: 2
            Layout.fillWidth: true
            Layout.fillHeight: true

            Image {
                source: "pics/logo(white).png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
            }
        }

        // row 3
        //// panel(start)
        TransparentRect{
            Layout.preferredHeight: 15
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true

            MyComponents.StartPanel{}
        }
        //// panel(clock)
        TransparentRect{
            Layout.preferredHeight: 15
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#CCFFCC"
        }
        // row 4
        TransparentRect{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        // row 5
        //// END SURGURY BUTTON
        TransparentRect{
            Layout.preferredHeight: 3
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FF0000"
        }
        //// POWER BUTTON
        TransparentRect{
            Layout.preferredHeight: 3
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FF0000"
        }
        // row 6
        TransparentRect{
            Layout.rowSpan: 3
            Layout.preferredHeight: 5
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 38
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.rowSpan: 3
            Layout.preferredHeight: 5
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        // row 7
        //// PACS,HIS
        TransparentRect{
            Layout.preferredHeight: 3
            Layout.preferredWidth: 38
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#0066CC"
        }
        // row 8
        TransparentRect{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 38
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        // row 9
        //// PREVIOS
        TransparentRect{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FFFFCC"
        }
        //// ROUTING,CONFFERENCE,ARCHIVE
        TransparentRect{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 38
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#CCE5FF"
        }
        //// NEXT
        TransparentRect{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FFFFCC"
        }
        // row 10
        TransparentRect{
            Layout.preferredHeight: 2
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.preferredHeight: 2
            Layout.preferredWidth: 38
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        TransparentRect{
            Layout.preferredHeight: 2
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
