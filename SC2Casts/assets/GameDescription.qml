import bb.cascades 1.0
Container{
    
    property alias title : title.text
    property alias description : description.text
    property alias casters : casters.text
    property alias race1 : versus.race1
    property alias race2 : versus.race2
    
    
    minHeight: 250	
    maxHeight: 250
    
    attachedObjects:[
        TextStyleDefinition {
            id: tsd
            base: SystemDefaults.TextStyles.BodyText
            fontSize: FontSize.Large
           color:Color.White
            fontFamily: "helvetica"
        }
    ]
    layout:DockLayout {}

    verticalAlignment: VerticalAlignment.Fill
    background: Color.Black
    Container{

        
        layout: DockLayout{

        }
        
        minWidth: 720
        maxWidth: 1280
        
        horizontalAlignment: HorizontalAlignment.Fill
        
        rightPadding: 33.0
        leftPadding: 33.0
        
        topPadding: 10.0

        background: Color.Black
        Versus {
            id : versus
            horizontalAlignment: HorizontalAlignment.Right
            verticalAlignment: VerticalAlignment.Top
            preferredWidth: 300
            preferredHeight:100
            topMargin: 33.0
            translationX:60

        }
        
        Label {
            id: title
            text: "Scarlett vs JaedongJaedongJaedongJaedongJaedong"
            multiline: true
            textStyle{
                base: tsd.style
            }
            preferredHeight: 200.0
            preferredWidth: 500
        }
       
        
    }
   
    Container{
        background: Color.Black
        verticalAlignment: VerticalAlignment.Bottom
        minWidth: 720
        maxWidth: 1280
        
        layout: DockLayout {

        }
        horizontalAlignment: HorizontalAlignment.Fill
        leftPadding: 33.0
        bottomPadding: 33.0
        rightPadding: 33.0
        translationY: 20.0
        Label {
	        id : description
            text : "2013 WCS America S2 Semi Finals"
	        textStyle.color: Color.White
	        textStyle.fontSizeValue: 5
	        preferredWidth: 300
	        multiline: true
	        verticalAlignment: VerticalAlignment.Bottom
	        horizontalAlignment: HorizontalAlignment.Left
            textStyle.fontWeight: FontWeight.Normal
            textStyle.fontSize: FontSize.Small

        }
        
        Label{
            id :casters
            text: "Day9 and HuskyHuskyHusky"
            textStyle.color: Color.White
            textStyle.fontSizeValue: 8
            horizontalAlignment: HorizontalAlignment.Right
            verticalAlignment: VerticalAlignment.Bottom
            multiline: true
            textStyle.fontWeight: FontWeight.Normal
            textStyle.fontSize: FontSize.Small
            maxWidth: 300.0
        }
        
    }
   
    
    Container{
        background: Color.White
        minWidth : 720
        maxWidth: 1280
        minHeight: 2
        verticalAlignment: VerticalAlignment.Bottom
        horizontalAlignment: HorizontalAlignment.Fill
    }
}
