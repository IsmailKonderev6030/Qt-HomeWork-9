#include "trw.h"

TRW::TRW()
{

}

void TRW::readOfFile(){
    //зачем если мы его не выводим?
}

void TRW::writeToFile(QString name,QString date,QString progres){
    if(!name.size()||!date.size()||!progres.size()) return;

    QFile file("Tasks.txt");

    if(file.open(QIODevice::Append | QIODevice::Text)){
        QString forWrite = "Name:\t\t" + name + "\nDate:\t\t" + date + "\nProgres:\t" + progres + "\nend\n\n";
        file.write(forWrite.toUtf8());
    }
}
