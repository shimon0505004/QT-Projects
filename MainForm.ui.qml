import QtQuick 2.6

Rectangle {
    id: loginWindow

    width: 800
    height: 600
    property alias loginButton: loginButton
    property alias loginButtonText: loginButtonText
    property alias passwordInput: passwordInput
    property alias usernameInputBackground: usernameInputBackground
    property alias usernameLabelColor: usernameLabel.color

    Image {
        id: loginWindowBackgroundImage
        anchors.fill: parent
        source: "login_bg.png"

        Rectangle {
            id: topPanel
            height: 70
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#805bcce9"
                }

                GradientStop {
                    position: 1
                    color: "#80000000"
                }
            }
            border.color: "#000000"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: dateTime
                color: "#ffffff"
                text: qsTr("Thursday, August 31 2017 11:49 AM")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 28
                anchors.right: parent.right
                anchors.rightMargin: 612
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.top: parent.top
                anchors.topMargin: 28
                font.wordSpacing: 1
                font.family: "MS Shell Dlg 2"
            }

            MouseArea {
                id: shutdownButton
                x: 742
                y: 22
                width: 50
                height: 50
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.top: parent.top
                anchors.topMargin: 10
                enabled: true

                Rectangle {
                    id: shutdownButtonBackground
                    color: "#27a9e3"
                    radius: 2
                    anchors.fill: parent

                    Image {
                        id: shutdownButtonIcon
                        anchors.fill: parent
                        source: "shutdown_icon.png"
                    }
                }
            }

            MouseArea {
                id: restartButton
                x: 634
                width: 50
                height: 50
                anchors.right: parent.right
                anchors.rightMargin: 66
                anchors.top: parent.top
                anchors.topMargin: 10

                Rectangle {
                    id: restartButtonBackground
                    color: "#27a9e3"
                    radius: 2
                    anchors.fill: parent

                    Image {
                        id: restartButtonIcon
                        anchors.fill: parent
                        source: "restart_icon.png"
                    }
                }
            }
        }

        Rectangle {
            id: loginForm
            x: 220
            y: 300
            width: 360
            height: 200
            color: "#80000000"
            radius: 15
            anchors.verticalCenterOffset: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Text {
                id: usernameLabel
                height: 20
                color: "#ffffff"
                text: qsTr("Username :")
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.top: parent.top
                anchors.topMargin: 32
                font.pixelSize: 12
            }

            Text {
                id: passwordLabel
                height: 20
                color: "#ffffff"
                text: qsTr("Password :")
                anchors.top: parent.top
                anchors.topMargin: 64
                anchors.left: parent.left
                anchors.leftMargin: 30
                font.pixelSize: 12
            }

            TextInput {
                id: usernameInput
                height: 20
                text: qsTr("Text Input")
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.top: parent.top
                anchors.topMargin: 32
                anchors.left: parent.left
                anchors.leftMargin: 105
                font.pixelSize: 12

                Rectangle {
                    id: usernameInputBackground
                    color: "#ffffff"
                    radius: 1
                    anchors.fill: parent
                }
            }

            TextInput {
                id: passwordInput
                height: 20
                text: qsTr("Text Input")
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.top: parent.top
                anchors.topMargin: 64
                anchors.left: parent.left
                anchors.leftMargin: 105
                font.pixelSize: 12

                Rectangle {
                    id: passwordInputBackground
                    color: "#ffffff"
                    radius: 5
                    anchors.fill: parent
                }
            }

            MouseArea {
                id: loginButton
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 78
                anchors.top: parent.top
                anchors.topMargin: 98

                Rectangle {
                    id: loginButtonBackground
                    color: "#27a9e3"
                    radius: 10
                    anchors.fill: parent
                }

                Text {
                    id: loginButtonText
                    color: "#ffffff"
                    text: qsTr("Login")
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                    font.bold: false
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }
            }
        }
    }
}
