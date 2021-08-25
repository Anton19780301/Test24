import QtQuick 2.0
import QtQuick.Scene3D 2.0
import Qt3D.Render 2.0
import QtQuick.Controls 1.4

Item {
    Rectangle {
        id: scene
        property bool colorChange: true
        anchors.fill: parent
        color: "#2d2d2d"

        transform: Rotation {
            id: sceneRotation
            axis.x: 1
            axis.y: 0
            axis.z: 0
            origin.x: scene.width / 2
            origin.y: scene.height / 2
        }
        Rectangle {
            id: controlsbg
            anchors.fill: parent
            anchors.leftMargin: 10
            anchors.topMargin: 10
            anchors.rightMargin: 1720
            anchors.bottomMargin: 10
            color: "grey"
            Column {
                anchors.fill: parent
                anchors.leftMargin: 5
                anchors.topMargin: 5
                spacing: 10
                Rectangle {
                    id: slidertexscale
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: scaletext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "TEXTURE SCALE"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider1
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 1.0
                        minimumValue: 0.3
                    }
                }
                Rectangle {
                    id: slidertexturespeed
                    width: 180
                    height: 60
                    color: "#2d2d2d"
                    Text {
                        id: texturespeedtext
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        text: "TEXTURE SPEED"
                        color: "white"
                        font.bold: true
                        font.pointSize: 12
                    }
                    Slider {
                        id: slider5
                        anchors.fill: parent
                        anchors.topMargin: 30
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        value: 1.1
                        maximumValue: 4.0
                        minimumValue: 0.0
                    }
                }
            }
        }

        Scene3D {
            id: scene3d
            anchors.fill: parent
            anchors.leftMargin: 200
            anchors.topMargin: 10
            anchors.rightMargin: 10
            anchors.bottomMargin: 10
            focus: true
            aspects: ["input", "logic"]
            cameraAspectRatioMode: Scene3D.AutomaticAspectRatio

            Mega3DScene{}
        }
    }
}
