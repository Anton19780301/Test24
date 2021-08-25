import Qt3D.Core 2.0
import Qt3D.Render 2.0

Entity{
    property double placeXPosition
    property double placeYPosition
    property double placeZPosition

    SceneLoader{
        id: sceneLoader01
        source: "qrc:/Items/Item/IS4.obj"
    }
    Transform{
        id: lightTransform03
        translation: Qt.vector3d(placeXPosition,placeYPosition,placeZPosition)
        scale: 5
    }
    components: [sceneLoader01,lightTransform03]
}
