import QtQuick 2.15
import QtQuick.Controls 2.15
import Task3 1.0
ApplicationWindow {
    visible: true
    width: 1000
    height: 800
    title: "Icon Toggle"

    Rectangle {
        anchors.fill: parent
        color: "#1A1A1A"
    }

    Column {
        anchors.centerIn: parent
        spacing: 50

        Image {
            id: iconImage
            source: "qrc:/LED_OFF.png"
            width: 250
            height: 250
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: statusText
            text: "LED Status: OFF"
            color: "white"
            font.pixelSize: 35
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Toggle"
            width: 150
            height: 50
            font.pixelSize: 30
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                color: "pink"
                radius: 10
            }

            onClicked: {
                if (statusText.text === "LED Status: OFF") {
                    statusText.text = "LED Status: ON"
                    iconImage.source = "qrc:/LED_ON.png"
                    ledController.handleButtonClick(1)  // ✅ Call C++ function to turn ON the LED
                } else {
                    statusText.text = "LED Status: OFF"
                    iconImage.source = "qrc:/LED_OFF.png"
                    ledController.handleButtonClick(2)  // ✅ Call C++ function to turn OFF the LED
                }
            }
        }
    }
}
