import QtQuick 2.15
import Qt3D.Core 2.0
import Qt3D.Extras 2.15
import Qt3D.Input 2.0
import Qt3D.Render 2.0
import Qt3D.Logic 2.0
import QtQuick.Window 2.14

Entity {
    id: rootEtity

    SkyboxEntity {
        baseName: "qrc:/Items/Item/skybox"
        extension: ".tga"
    }

    Torus01{
        placeXPosition: 0.0
        placeYPosition: 20.0
        placeZPosition: 0.0
    }

    Tank01{
        placeXPosition: -15.0
        placeYPosition: -20.0
        placeZPosition: -20.0
    }
    Tank01{
        placeXPosition: 15.0
        placeYPosition: -20.0
        placeZPosition: -20.0
    }

    Text01{
        placeXPosition: 0.0
        placeYPosition: -15.0
        placeZPosition: 20.0
    }

    Entity{
        PointLight{
            id: pointLight01
            color: Qt.rgba(1,0.5,0.5,0)
        }
        Transform{
            id: lightTransform01
            translation: Qt.vector3d(0.0,0.0,30.0)
        }
        id: pintLightEntity01
        components: [pointLight01,lightTransform01]
    }

    Entity{
        SceneLoader{
            id: sceneLoader01
            source: "qrc:/Items/Item/teaPort.obj"
        }
        Transform{
            id: lightTransform03
            translation: Qt.vector3d(0.0,20.0,0.0)
            scale: 0.3
        }
        components: [sceneLoader01,lightTransform03]
    }

    Camera {
        id: mainCamera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 60.0
        aspectRatio: 16.0 / 9.0
        nearPlane: 0.1
        farPlane: 1000.0
        position: Qt.vector3d(0.0,0.0,100.0)
        upVector: Qt.vector3d(0.0,1.0,0.0)
        viewCenter: Qt.vector3d(0.0,0.0,0.0)
    }

    OrbitCameraController{
        id: controllerFirst
        camera: mainCamera
    }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer{
                clearColor: Qt.rgba(1,1,1,1)
                camera: mainCamera
                showDebugOverlay: true
            }
        },
        InputSettings{}
    ]
}
