import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.15
import QtQuick 2.15

Entity{
    property double placeXPosition
    property double placeYPosition
    property double placeZPosition

    Entity{
        id: torusEntity01
        TorusMesh {
            id: torusMesh01
            radius: 15.0
            minorRadius: 5.0
            slices: 16
            rings: 32
        }
        PhongAlphaMaterial{
            id: torusMaterial01
            diffuse: Qt.rgba(0,0,1,1)
            ambient: Qt.rgba(0.15,0,0,1)
            sourceAlphaArg: BlendEquationArguments.Zero
            destinationAlphaArg: BlendEquationArguments.One
        }
        Transform {
            id: torusTransform01
            translation: Qt.vector3d(placeXPosition,placeYPosition,placeZPosition)
            SequentialAnimation on rotationY {
                loops: Animation.Infinite
                NumberAnimation {
                    duration: 3000
                    to: -360
                    from: 0
                    easing.type:Easing.Linear
                }
            }
            onTranslationChanged: console.log(translation.x,translation.y,translation.z)
        }
        components: [torusMesh01,torusMaterial01,torusTransform01]
    }

    Entity{
        id: torusEntity02
        TorusMesh {
            id: torusMesh02
            radius: 15.0
            minorRadius: 5.0
            slices: 16
            rings: 32
        }
        PhongAlphaMaterial{
            id: torusMaterial02
            diffuse: Qt.rgba(0,0,1,1)
            ambient: Qt.rgba(0.15,0,0,1)
            sourceAlphaArg: BlendEquationArguments.Zero
            destinationAlphaArg: BlendEquationArguments.One
        }
        Transform {
            id: torusTransform02
            translation: Qt.vector3d(placeXPosition,placeYPosition,placeZPosition)
            SequentialAnimation on rotationY {
                loops: Animation.Infinite
                NumberAnimation {
                    duration: 3000
                    to: 360
                    from: 0
                    easing.type:Easing.Linear
                }
            }
            onTranslationChanged: console.log(translation.x,translation.y,translation.z)
        }
        components: [torusMesh02,torusMaterial02,torusTransform02]
    }

}
