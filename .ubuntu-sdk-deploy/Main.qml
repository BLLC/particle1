import QtQuick 2.0
import QtQuick.Particles 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "particle1.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("particle1")

        ParticleSystem {
            id: particle
            anchors.fill: parent
            running: true

            ImageParticle {
                anchors.fill: parent
                source: "qrc:///particleresources/star.png"
//                source: "images/starfish_1.png"
                alpha: 0.5
                alphaVariation: 0.2
                colorVariation: 1.0
            }

            Emitter {
                anchors.centerIn: parent
                emitRate: 400
                lifeSpan: 5000
                size: 20
                sizeVariation: 8
                velocity: AngleDirection {angleVariation: 90; magnitude: 60}
            }

            Turbulence {
                anchors.fill: parent
                strength: 2
            }
        }
    }
}

