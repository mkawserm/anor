import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import org.kawser.bkf.extras 1.0


Item{
    id: __root
    objectName: "com.cliodin.anor.About"
    property string cprYear: "2016" //NOTE: change according to current year

    Rectangle{
        anchors.fill: parent
        color: "#f2ffffff"
        radius: 5
        Rectangle{
            id: __title_place
            width: parent.width
            height: 30
            color: "transparent"
            Text {
                id: __title
                anchors.fill: parent
                color: "black"
                text: qsTr("About")
                font.pointSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

            }
        }

        SwipeView {
            id: view
            anchors.top: __title_place.bottom
            width: parent.width
            height: parent.height - __title.height - __indicator.height
            currentIndex: 0
            clip: true


            Item{
                id: _anor
                Image {
                    id: __anor_logo
                    width: 64
                    height: 64
                    source: "anor-72x72.png"
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                }
                Text {
                    id: __anor_title_text
                    anchors.left: __anor_logo.right
                    anchors.verticalCenter: __anor_logo.verticalCenter
                    anchors.leftMargin: 5
                    text: "<b>Anor "+anorVersion+"</b>"
                    font.pointSize: 16
                }
                Text {
                    id: __anor_text
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    anchors.top: __anor_logo.bottom
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    width: parent.width
                    height: parent.height - __anor_logo.height
                    text: "Anor is an educational software package.\nThe goal of this software to help students in all possible ways."
                    wrapMode: Text.WordWrap
                }
            }

            Item{
                Rectangle{
                    id:__bk_logo
                    width: 64
                    height: 64
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    color: "black"
                    radius: 5
                    Text {
                        color: "white"
                        id: __bk_logo_text
                        text: "B"
                        anchors.fill: parent
                        anchors.centerIn: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 50
                    }
                }

                Text {
                    id: __bk_title_text
                    anchors.left: __bk_logo.right
                    anchors.verticalCenter: __bk_logo.verticalCenter
                    anchors.leftMargin: 5
                    text: "<b>Black Knight "+BKExtras.bkVersion()+"</b>"
                    font.pointSize: 16
                }
                Text {
                    id: __bk_text
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    anchors.top: __bk_logo.bottom
                    width: parent.width
                    height: parent.height - __bk_logo.height
                    text: "Black Knight is a library based on Qt."
                          +"<br/>The library provides different modules for different purposes."
                          +"<br/>The library includes c++ api as well as qml and javascript."
                          +"<br/>Black Knight is developed by kawser."
                          +"<br/>It is an intellectual property of cliodin."
                          +"<br/>Please see details at https://cliodin.com"
                          +"<br/><br/>Copyright (C) "+__root.cprYear +" cliodin"
                    wrapMode: Text.WordWrap
                }
            }


            Item{
                Image {
                    id: __qt_logo
                    width: 64
                    height: 64
                    source: "qt_logo_green_64x64px.png"
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                }
                Text {
                    id: __qt_title_text
                    anchors.left: __qt_logo.right
                    anchors.verticalCenter: __qt_logo.verticalCenter
                    anchors.leftMargin: 5
                    text: "<b>Qt "+BKExtras.qtVersion()+"</b>"
                    font.pointSize: 16
                }

                Flickable {
                     id: flickable
                     anchors.left: parent.left
                     anchors.leftMargin: 5
                     anchors.right: parent.right
                     anchors.rightMargin: 5
                     anchors.top: __qt_logo.bottom
                     width: parent.width
                     height: parent.height - __qt_logo.height

                     TextArea.flickable: TextArea {
                         color: "black"
                         cursorVisible: false
                         readOnly: true
                         text: "Qt is a C++ toolkit for cross-platform application development."
                               + "Qt provides single-source portability across all major desktop operating systems."
                               + "It is also available for embedded Linux and other embedded and mobile operating systems."
                               + "Qt is available under three different licensing options designed to accommodate the needs of our various users."
                               + "Qt licensed under our commercial license agreement is appropriate for development of proprietary/commercial software where you do not want to share any source code with third parties or otherwise cannot comply with the terms of the GNU LGPL version 3."
                               + "Qt licensed under the GNU LGPL version 3 is appropriate for the development of Qt applications provided you can comply with the terms and conditions of the GNU LGPL version 3."
                               + "Please see qt.io/licensing for an overview of Qt licensing."
                               + "Qt and the Qt logo are trademarks of The Qt Company Ltd."
                               + "Qt is The Qt Company Ltd product developed as an open source project. See qt.io for more information"
                               + "\n\nCopyright (C) "+__root.cprYear+" The Qt Company Ltd and other contributors."
                         wrapMode: TextArea.WordWrap
                         font.family: __anor_text.font.family
                         font.pixelSize: __anor_text.font.pixelSize
                     }

                     ScrollBar.vertical: ScrollBar { }
                 }


            }

        }

        PageIndicator {
            id: __indicator
            count: view.count
            currentIndex: view.currentIndex
            delegate: Rectangle{
                color: index===__indicator.currentIndex?"black":"grey"
                width: 10
                height: width
                radius: width/2
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        view.currentIndex = index
                    }
                }
            }

            anchors.top: view.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
