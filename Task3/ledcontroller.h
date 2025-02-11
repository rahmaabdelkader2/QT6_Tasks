#ifndef LEDCONTROLLER_H
#define LEDCONTROLLER_H

#include <QObject>

class LedController : public QObject {
    Q_OBJECT
public:
    explicit LedController(QObject *parent = nullptr);

public slots:
    void handleButtonClick(int buttonId);  // Slot to handle QML button clicks
};

#endif
