# Instrument Cluster Example

Shows how to convert PSD content into a QtQuick UI Form using the QtQuickUIForm template for PNGExpress.

Open the `InstrumentCluster.psd`. You see a simplified version of the Neptune Instrument Cluster. The graphics layers are named after the PNG Express naming convention to create the desired assets.

The example PSD document InstrumentCluster.psd is already tagged to be used with PNGExpress. You can open the PSD document and open the PNGExpress export dialog (`Windows->Extensions->PNG Express`). You should choose to select the `QmlUiForm.ui.qml` template from the templates selector dialog.

_Note: If you do not see these templates, ensure you set the templates directory in the PNGExpress settings._

You should choose for convenience the `examples/InstrumentCluster/assets` folder as the output folder for the generated assets. After  exportig all assets you can open the `InstrumentCluster.qmlproject` project file with QtCreator and see all generated assets, as also the QtQuick UI Form.

You should now find a `InstrumentsCluster.ui.qml` document in the assets folder. This document is referenced from our `Main.qml` document. When you open the `InstrumentsCluster.ui.qml` document QtCreator will automatically show the QtQuick Designer where you can inspect and modify individual image or text objects.

## Running the User Interface

The `Main.qml` document just instantiaes the UI Form, using InstrumentCluster.

```js
import QtQuick 2.4
import "assets"

InstrumentCluster {
}
```

When you run the project you should see the instrument cluster as is from PSD document. You can not interact with the content as it is static content. In the QtQuick design mode you can inspect and manipulate the individual assets.

## Making the User Interface Responsive

To make the user interface do something useful for example to control the meter cursor, we need to add some code to adjust the position of the cursor and how it should behace for rotation. These are hard-coded values which where found by trial and error. We used QmlLive are a live reloading tool to speed up this manual task. Here is the final code.

```js
import QtQuick 2.4
import "output"

InstrumentCluster {
    id: root
    width: 400; height: 400

   property real speedValue: 1.5
   meter_cursor.transformOrigin: Item.BottomRight
   meter_cursor.transform: Rotation {
       id: meterRotation
       angle: -83 + (speedValue*(157+83))
       origin { x: 168; y: 213 }
   }
   speed.text: String((speedValue*260).toFixed())
   NumberAnimation on speedValue {
       from: 0.0; to: 1.0; duration: 12000
       easing.type: Easing.OutQuad
       loops: Animation.Infinite
   }
   distance.font.pixelSize: 28
   speed.font.pixelSize: 96
}
```

