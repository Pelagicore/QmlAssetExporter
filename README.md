

# QML Asset Exporter from Photoshop

The templates used here are based on PNGExpress (http://www.pngexpress.com)
for PhotoShop. PNGExpress allows a designer to slice and export PSD documents
to individual PNG, JPG and SVG assets. On top of this it allows also to export
meta information from the PSD document and the exported information can be
formatted using a template language. For more information on the individual
features and the template syntax, please read the PNGExporess excellent user
guide (http://www.pngexpress.com/support.html).

## Templates

The templates presented allows the user to export information from the
document as an individual UI QML form per document for to export per asset a
QML document.

## QML UI Forms Document Template

This template generates a .ui.qml document from the PSD document. The document
name is used as a base for the resulting .ui.qml document. Graphics as also
Text objects are exported with absolute positioning. Text object are also
exported with font and alignement information.

The resulting document can be used with the QtQuick Designer to further adjust
the different user interface objects. This is a great tool for fast prototying
and bringing a static PSD document to live.

TODO: Update the existing templates TODO: Port the existing example


## QML Asset Template

Each tagged graphics or text asset will be exported as own QML document to be
usable inside your project.

TODO: Support visual content adjustment TODO: Support BorderImage support

## QML Asset Catalog Template

A document will be generated to be browsable by the developer to inform
themself on individual assets names and diemension.

TODO: Write the export template TODO: Write AssetCatalog tool to load the
asset catalog.


