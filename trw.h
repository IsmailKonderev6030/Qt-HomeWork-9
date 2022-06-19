#ifndef TRW_H
#define TRW_H

#include <QObject>
#include <QFile>
#include <QByteArray>
#include <QString>

class TRW : public QObject
{
    Q_OBJECT
public:
    TRW();

    void readOfFile();

public slots:
    void writeToFile(QString,QString,QString);

};

#endif // TRW_H
