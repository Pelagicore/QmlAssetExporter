{{document.name|set>documentName}}
{{export.date|set>exportDate}}
{{assets}}{{newFile|name>{{assetName|cleanAssetName|capcase}}Image.qml}}import QtQuick 2.4
/*
    GENERATED FILE: DO NOT EDIT!
    Generated from: {{documentName}}
    Date: {{exportDate}}
 */
Image {
    id: root
    {{versions}}{{if #|first}}source: {{assetName}}{{varName}}{{stateName}}{{/if}}
    property string {{assetName}}{{varName}}{{stateName}}: "{{specificPath}}"{{/versions}}
}
{{/newFile}}{{/assets}}
