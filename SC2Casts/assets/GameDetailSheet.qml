import bb.cascades 1.0


Page {
    property alias nav : carousel.nav
   
    titleBar: TitleBar {
        title: "Test"
        visibility: ChromeVisibility.Visible

    }
    Container {
            layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom

       		 }

        background: Color.Black
        GameCarousel{
            id: carousel
            horizontalAlignment: HorizontalAlignment.Center

        }

        Label {
            text: "First page"
            textStyle.color: Color.create("#f4ffa200")
        }

        Label {
            textStyle.color:Color.White
            text: "First page"
        }
    }
}
