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

        Button{
            anchors.centerIn: parent
            width: 100
            height: 100
            text: "Hello"
            onClicked: BKHelper.setPopup("https://raw.githubusercontent.com/mkawserm/anor/master/TestRemotePopup.qml",{"color":"yellow","radius":50.0});
        }
    }
}
