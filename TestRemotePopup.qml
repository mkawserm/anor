import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    //focus: true
    property alias color: rec.color
    //property alias radius: rec.radius
    Rectangle{
        id: rec
        anchors.fill: parent
        color: "blue"
    }
}
