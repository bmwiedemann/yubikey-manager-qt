import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.2
import "slotutils.js" as SlotUtils

InlinePopup {
    Heading2 {
        width: parent.width
        text: qsTr("Do you want to delete the content of the " + SlotUtils.slotNameCapitalized(
                       views.selectedSlot) + "?

This permanently deletes the configuration in the slot.")
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        wrapMode: Text.WordWrap
    }
    standardButtons: Dialog.No | Dialog.Yes
}
