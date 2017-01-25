import QtQuick 2.7

Page1Form {

    Timer {
        interval: 900000 // 15 min
        running: true
        repeat: true
        onTriggered: dataProvider.getPollutionInfos(dataProvider.city)
    }

    button1.onClicked: {
        dataProvider.getPollutionInfos(textField1.text)
        console.log("Button Pressed. Entered text: " + textField1.text);
    }

    pm25Indice.onTextChanged: {
        if (dataProvider.indicePM25 <= 50) {
            pm25Rec.color = "#4CAF50"
            imageIndice.source = "qrc:/images/Ecology-1.png"
            indiceMessage.text = "Good"
        }
        else if (dataProvider.indicePM25 > 50 && dataProvider.indicePM25 <= 100) {
            pm25Rec.color = "#FFC107"
            imageIndice.source = "qrc:/images/Ecology-2.png"
            indiceMessage.text = "Moderate"
        }
        else if (dataProvider.indicePM25 > 100 && dataProvider.indicePM25 <= 150) {
            pm25Rec.color = "#FF5722"
            imageIndice.source = "qrc:/images/Ecology-3.png"
            indiceMessage.text = "Unhealthy"
        }
        else if (dataProvider.indicePM25 > 150 && dataProvider.indicePM25 <= 200) {
            pm25Rec.color = "#F44336"
            imageIndice.source = "qrc:/images/Ecology-4.png"
            indiceMessage.text = "Unhealthy"
        }
        else if (dataProvider.indicePM25 > 200 && dataProvider.indicePM25 <= 250) {
            pm25Rec.color = "#673AB7"
            imageIndice.source = "qrc:/images/Ecology-5.png"
            indiceMessage.text = "Unhealthy"
        }
        else
        {
            pm25Rec.color = "#E91E63"
            imageIndice.source = "qrc:/images/Ecology-6.png"
            indiceMessage.text = "Hazardous"
        }
    }
}
