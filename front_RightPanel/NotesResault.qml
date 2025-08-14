import QtQuick

Rectangle{
    id: notes_result
    color: "transparent"

    BorderImage{
        anchors.fill: parent
        source: "../pics/Icons/R_Notes_Result.png"
        cache: true
        antialiasing: true
        border{
            left: 1; right: 1; top: 1; bottom: 1
        }
    }
}
