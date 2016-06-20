{{newFile|name>{{document.name|trim|pack|capcase|call>slice>0>-4}}.ui.qml}}
import QtQuick 2.4

FocusScope {
    id: root
    width: {{document.width}}
    height: {{document.height}}
{{assets}}{{versions}}
    property alias {{assetName|cleanAssetName|split>-|join>_|}}{{varName}}{{stateName}} : {{assetName|cleanAssetName|split>-|join>_|}}{{varName}}{{stateName}}{{/versions}}{{/assets}}
{{texts}}
    property alias {{name}}: {{name}}{{/texts}}

{{assets}}{{versions}}
    Image {
        id: {{assetName|cleanAssetName|split>-|join>_|}}{{varName}}{{stateName}}
        x: {{x}}
        y: {{y}}
        width: {{width}}
        height: {{height}}
        source: "{{file}}"
        z: {{zIndex}}
        visible: {{visible}}
        opacity: {{opacity}}/100
    }
{{/versions}}{{/assets}}

{{texts}}
Text {
    id: {{name}}
    text: "{{content}}"
    x: {{x}}
    y: {{y}}
    width: {{width}}
    height: {{height}}
    font.family: "{{font}}"
    font.pixelSize: {{fontSize}}
    color: "{{fontColorHex}}"
    z: {{zIndex}}
    {{if justification|equals>Center align}}horizontalAlignment: Text.AlignHCenter{{/if}}
    verticalAlignment: Text.AlignVCenter
    visible: {{visible}}
    opacity: {{opacity}}/100
    font.letterSpacing: {{letterSpacing}}

}
{{/texts}}
}
{{/newFile}}
