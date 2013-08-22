import bb.cascades 1.0


ListView {
    
    property alias data : dataModel.source
    property variant nav
    attachedObjects: [
        ComponentDefinition {
            id: gameDetail
            source: "GameDetailSheet.qml"
        },
        GameDetailSheet {
            id: gameSheet 
           // url : "http://www.youtube.com/embed/QflzaO2d_f4?rel=0&controls=0"
        }
    ]
    
    dataModel: XmlDataModel {
        id: dataModel
        source: "models/topgamedescriptions.xml"
    }
    
    listItemComponents: [
        ListItemComponent {
            type: "listItem"
        
            content: GameDescription {
                title : ListItemData.title//replaceVs(ListItemData.title)
                description: ListItemData.description
                race1: ListItemData.race1
                race2: ListItemData.race2
                
                contextActions: [
                    ActionSet {
                        title: "Share"
                        
                        ActionItem {
                            title: "Share on BBM"
                        }
                        ActionItem {
                            title: "Share on Facebook"
                        }
                        ActionItem {
                            title: "Share on Whatsapp"
                        }
                    }
                ]
                
            }
        } // end of second ListItemComponent]
    ]
    
    onTriggered: {
        var page = gameDetail.createObject();
        page.nav = nav;
        nav.push(page);
    }
    
    onDataChanged :  {
        console.log("Data has changed", source)
    }

    layout: StackListLayout {

    }
    function replaceVs(str){
        return str.replace("vs", "");
    }

}

 