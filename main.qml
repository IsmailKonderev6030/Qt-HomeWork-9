import QtQuick 2.15
import QtQuick.Window 2.15

import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Window {
    width: 400
    height: 150
    visible: true
    title: qsTr("Organizer")

    Connections {
        target: trw
    }

    Text{
        id: text1
        text: qsTr("Task Name: ")
    }

    TextField {
        id: textField1
        width: 150
        placeholderText: qsTr("Enter name...")
        x: 100

    }

    Text{
        id: text2
        text: qsTr("Date: ")
        y: text1.y + 35
    }

    TextField {
        id: textField2
        width: 150
        placeholderText: qsTr("Enter date...")
        x: 100
        y: text2.y
        validator: RegularExpressionValidator { regularExpression: /(0?[1-9]|[12]\d|30|31)[^\w\d\r\n:](0?[1-9]|1[0-2])[^\w\d\r\n:](\d{4}|\d{2})/ }
    }

    Text{
        id: text3
        text: qsTr("Progress: ")
        y: text2.y + 35
    }

    TextField {
        id: textField3
        width: 150
        placeholderText: qsTr("Enter progress...")
        x: 100
        y: text3.y

    }

    Button{
        id: button1
        text: qsTr("Save")
        y: text3.y + 35
        onClicked: trw.writeToFile(
                       textField1.text,
                       textField2.text,
                       textField3.text
                       )
    }

    UserButton{
        id: userButton1
        text: qsTr("User Button")
        y:button1.y
        anchors.left: button1.right
    }
}
