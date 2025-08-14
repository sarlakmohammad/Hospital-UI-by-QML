import QtQuick

Rectangle{
    id: negatoscope
    color: "transparent"

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/R_Negatoscope.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }
    }
}
