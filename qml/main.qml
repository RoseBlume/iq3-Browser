import QtWebEngine 1.8
import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Window {
    id: window
    title: qsTr("qrc:/index.html")
    Item {
        id:"tabs"
        function namer() {
            var x = view1.url
            //console.log((String(.text).slice(12,18)))
            if ((String(view1.url)).slice(12,18) != "google") {
                if (view2.title != "Loading") {
                    tab1.text = view1.title
                }
            }
            if ((String(view2.url)).slice(12,18) != "google") {
                if (view2.title != "Loading") {
                    tab2.text = view2.title
                }
            }
            if ((String(view3.url)).slice(12,18) != "google") {
                if (view3.title != "Loading") {
                    tab3.text = view3.title
                }
            }
            if ((String(view4.url)).slice(12,18) != "google") {
                if (view4.title != "Loading") {
                    tab4.text = view4.title
                }
            }
            if ((String(view5.url)).slice(12,18) != "google") {
                if (view5.title != "Loading") {
                    tab5.text = view5.title
                }
            }
            if ((String(view6.url)).slice(12,18) != "google") {
                if (view6.title != "Loading") {
                    tab6.text = view6.title
                }

            }
            if ((String(view7.url)).slice(12,18) != "google") {
                if (view7.title != "Loading") {
                    tab7.text = view7.title
                }

            }
            if ((String(view8.url)).slice(12,18) != "google") {
                if (view8.title != "Loading") {
                    tab8.text = view8.title
                }
            }
            if ((String(view9.url)).slice(12,18) != "google") {
                if (view9.title != "Loading") {
                    tab9.text = view9.title
                }
            }
            if ((String(view10.url)).slice(12,18) != "google") {
                if (view10.title != "Loading") {
                    tab10.text = view10.title
                }
            }
        }
    }
    Rectangle {
        width:0.1 * parent.width
        height:parent.height
        y:parent.height * 0.05
        color:"gray"
        border.color:"black"
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            width:parent.width

            MouseArea {
                Text{
                    id:"tab1"
                    z:1
                    text: "Tab1"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view1
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }

        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            y:parent.height * 0.05
            width:parent.width
            MouseArea {
                Text{
                    id:"tab2"
                    text:"Tab 2"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view2
                    console.log(v.cview.url)
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    /*
                    view1.z = 0
                    view2.z = 1
                    view3.z = 0
                    view4.z = 0
                    view5.z = 0
                    view6.z = 0
                    view7.z = 0
                    view8.z = 0
                    view9.z = 0
                    view10.z = 0
                    */
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            y:parent.height * 0.10
            width:parent.width
            MouseArea {
                Text{
                    id:"tab3"
                    text:"Tab 3"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view3
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                        console.log(v.cview.url)
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1

            y:parent.height * 0.15
            width:parent.width
            MouseArea {
                Text{
                    text:"Tab 4"
                    horizontalAlignment:Text.AlignHCenter
                    id:"tab4"
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view4
                    console.log(v.cview.url)
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            y:parent.height * 0.20
            width:parent.width
            MouseArea {
                Text{
                    id:"tab5"
                    text:"Tab 5"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view5
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            width:parent.width
            y:parent.height * 0.25
            MouseArea {
                Text{
                    id:"tab6"
                    text:"Tab 6"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view6
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            y:parent.height * 0.30
            border.width: 1
            width:parent.width
            MouseArea {
                Text{
                    id:"tab7"
                    text:"Tab 7"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view7
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            y:parent.height * 0.35
            border.width: 1
            width:parent.width
            MouseArea {
                Text{
                    id:"tab8"
                    text:"Tab 8"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view8
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            y:parent.height * 0.40
            width:parent.width
            MouseArea {
                Text{
                    id:"tab9"
                    text:"Tab 9"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view9
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
        Rectangle {
            height: 0.05 * parent.height
            border.color:"black"
            border.width: 1
            y:parent.height * 0.45
            width:parent.width
            MouseArea {
                Text{
                    id:"tab10"
                    text:"Tab 10"
                    horizontalAlignment:Text.AlignHCenter
                    }
                height:parent.height
                width:parent.width
                x:anchors.left
                onClicked:{
                    v.cview.z = 0
                    v.cview = view10
                    if (v.cview.url == "qrc:/index.html") {
                        v.cview.url = "https:/www.google.com/"
                    }
                    tabs.namer()
                    v.cview.z = 1
                    //String(String(view)+String(tabno.cview)).z = 1
                }
                //console.log("New tab")
            }
        }
    }
    Rectangle {
        id:"rectSearch"
        width:parent.width
        height: parent.height * 0.05
        color:"gray"
        TextField {
            id:"search"
            height:parent.height
            width:parent.width
            placeholderText: "Search"
            Keys.onReturnPressed: {
                if ((search.text).slice(0, 4) == "http") {
                    v.cview.url = search.text
                    console.log("Is url")
                }
                else {
                    v.cview.url = ("https://www.google.com/search?client=firefox-b-d&q=" + (search.text).replace(/\s/g, '+'))
                    console.log("Not url")
                    console.log(search.text.slice(0, 3))
                }
            }
        }
    }
    Rectangle {
        width:parent.width * 0.9
        height:parent.height * 0.95
        x: parent.width * 0.1
        y: parent.height * 0.05
        WebEngineView {
            id:"view1"
            height:parent.height
            width:parent.width
            z:1
            url: "https://www.google.com/"
        }
        WebEngineView {
            id:"view2"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view3"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view4"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view5"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view6"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view7"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view8"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view9"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }
        WebEngineView {
            id:"view10"
            height:parent.height
            width:parent.width
            z:0
            url: "qrc:/index.html"
        }

    }
    Item{
        id:"v"
        property var cview: view1
    }
    Component.onCompleted:
    {
        console.log("Checking cview")
        console.log(v.cview.url)
        console.log("Hello World From Main.qml")
        // On mobile device application auto scale
        if(Qt.platform.os != "ios" && Qt.platform.os != "android")
        {
            width = Screen.width
            height = Screen.height
        }
        visible = true
        // Turn on visibility after setting the size explictly.
    }
}
