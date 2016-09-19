import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    property alias color: rec.color
    Rectangle{
        id: rec
        anchors.fill: parent
        Button{
        text: "test"
        anchors.centerIn:parent
        }
    }
}
