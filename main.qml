import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import "front" as MyComponents

Window {
    property color backgroundColor: "#136e71"
    property double ratio: 64 / 36

    id: root
    visible: true
    minimumWidth: 640
    minimumHeight: 360
    visibility: Window.Maximized
    color: backgroundColor

    GridLayout{
        id: ui
        anchors.fill: parent
        columns: 7
        rows: 10
        rowSpacing: 0
        columnSpacing: 0

        // row 1
        Rectangle{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.rowSpan: 2
            Layout.preferredHeight: 6
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }
        //// pic
        Rectangle{
            Layout.rowSpan: 5
            Layout.preferredHeight: 25
            Layout.preferredWidth: 36
            Layout.fillWidth: true
            Layout.fillHeight: true
            // clip: true
            // radius: 25

            Image {
                anchors.fill: parent
                source: "pics/pic.png"
                fillMode: Image.PreserveAspectCrop
            }
        }

        Rectangle{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.rowSpan: 10
            Layout.preferredWidth: 3
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        // row 2
        //// BOOBARS
        Rectangle{
            Layout.preferredWidth: 8
            Layout.preferredHeight: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor

            Image {
                source: "pics/logo(white).png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
            }
        }

        // row 3
        //// panel(start)
        Rectangle{
            Layout.preferredHeight: 15
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor

            MyComponents.StartPanel{}
        }
        //// panel(clock)
        Rectangle{
            Layout.preferredHeight: 15
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#CCFFCC"
        }
        // row 4
        Rectangle{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        // row 5
        //// END SURGURY BUTTON
        Rectangle{
            Layout.preferredHeight: 3
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FF0000"
        }
        //// POWER BUTTON
        Rectangle{
            Layout.preferredHeight: 3
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FF0000"
        }
        // row 6
        Rectangle{
            Layout.rowSpan: 3
            Layout.preferredHeight: 5
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 36
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.rowSpan: 3
            Layout.preferredHeight: 5
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }
        // row 7
        //// PACS,HIS
        Rectangle{
            Layout.preferredHeight: 3
            Layout.preferredWidth: 36
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#0066CC"
        }
        // row 8
        Rectangle{
            Layout.preferredHeight: 1
            Layout.preferredWidth: 36
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }
        // row 9
        //// PREVIOS
        Rectangle{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FFFFCC"
        }
        //// ROUTING,CONFFERENCE,ARCHIVE
        Rectangle{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 36
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#CCE5FF"
        }
        //// NEXT
        Rectangle{
            Layout.preferredHeight: 4
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#FFFFCC"
        }
        // row 10
        Rectangle{
            Layout.preferredHeight: 2
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.preferredHeight: 2
            Layout.preferredWidth: 36
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }

        Rectangle{
            Layout.preferredHeight: 2
            Layout.preferredWidth: 8
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: backgroundColor
        }
    }
}
