import QtQuick 2.0
import Ubuntu.Components 0.1
import "components"

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "SoundShack"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "com.ubuntu.developer..SoundShack"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    width: units.gu(95)
    height: units.gu(75)

    headerColor: "#57365E"
    backgroundColor: "#A55263"
    footerColor: "#D75669"

    Page {
        title: i18n.tr("SoundShack")

        Column {
            spacing: units.gu(1)
            anchors {
                margins: units.gu(2)
                fill: parent
            }

            HelloComponent {
                id: label
                objectName: "label"

                text: i18n.tr("Hello..")
            }

            Button {
                objectName: "button"
                width: parent.width

                text: i18n.tr("Tap me!")

                onClicked: {
                    label.text = i18n.tr("..world!")
                }
            }
        }
    }
}
