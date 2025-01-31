import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard

Window {
    id: window
    visible: true
    width: 1000
    height: 800
    title: "Task2"

    // Button 1 - Top Left
    Column {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button 1"
            onClicked: imageWindow1.visible = !imageWindow1.visible
        }

        Rectangle {
            id: imageWindow1
            width: 450
            height: 350
            visible: false

            Image {
                source: "qrc:/image1.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow1.visible = false
            }
        }
    }

    // Button 2 - Top Right
    Column {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button 2"
            onClicked: imageWindow2.visible = !imageWindow2.visible
        }

        Rectangle {
            id: imageWindow2
            width: 450
            height: 350
            visible: false

            Image {
                source: "qrc:/image2.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow2.visible = false
            }
        }
    }

    // Button 3 - Bottom Left
    Column {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button 3"
            onClicked: imageWindow3.visible = !imageWindow3.visible
        }

        Rectangle {
            id: imageWindow3
            width: 450
            height: 350
            visible: false

            Image {
                source: "qrc:/image3.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow3.visible = false
            }
        }
    }

    // Button 4 - Bottom Right
    Column {
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button 4"
            onClicked: imageWindow4.visible = !imageWindow4.visible
        }

        Rectangle {
            id: imageWindow4
            width: 450
            height: 350
            visible: false

            Image {
                source: "qrc:/image4.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow4.visible = false
            }
        }
    }
}
