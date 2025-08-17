import QtQuick

Rectangle{
    id: clock
    color: "transparent"

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/R_ClockWithoutNumbers.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }
    }

    Text {
        id: time_txt
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: parent.height * 0.05
        text: "00:00:00"
        font.pixelSize: parent.height * 0.4
        font.bold: true
        color: "white"
    }

    Connections{
        target: showDate
        function onTimeChanged(newTime){
            time_txt.text = newTime
        }
    }
}
