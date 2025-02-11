#include "ledcontroller.h"
#include <QDebug>
#include <X11/XKBlib.h>  // X11 Keyboard functions

LedController::LedController(QObject *parent) : QObject(parent) {}

void LedController::handleButtonClick(int buttonId) {
    qDebug() << "Button Clicked:" << buttonId;

    Display *display = XOpenDisplay(nullptr);
    if (!display) {
        qDebug() << "Failed to open X display";
        return;
    }

    // Modify the Caps Lock state
    if (buttonId == 1) {
        XkbLockModifiers(display, XkbUseCoreKbd, LockMask, LockMask);  // Turn Caps Lock ON
        qDebug() << "Turning Caps Lock LED ON";
    } else if (buttonId == 2) {
        XkbLockModifiers(display, XkbUseCoreKbd, LockMask, 0);  // Turn Caps Lock OFF
        qDebug() << "Turning Caps Lock LED OFF";
    } else {
        qDebug() << "Invalid button ID. Use 1 to turn on or 2 to turn off.";
    }

    XCloseDisplay(display);
}
