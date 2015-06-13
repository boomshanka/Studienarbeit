#ifndef _PROTOCOL_H__
#define _PROTOCOL_H__

// Fordert Slave auf den Status zu wechseln
// Kann mehrmals als IsAlive-Abfrage gesendet werden bzw um Slaves in Ausgangszustand zu bringen
#define PROT_CONNECT	0x01
#define PROT_DISCONNECT	0x02

// Fordert Slave auf eine Abstandsmessung zu starten, Ergebnis wird kurz danach erfragt
// Antwort: <Code> <Ergebnis 4 Byte>
#define PROT_STARTMES	0x11

#define PROT_MESSUCC	0x15
#define PROT_MESFAIL	0x16

// Fordert Slave auf die Signale für die Abstandsmessung untereinander zu senden (Ultraschall + Trigger)
#define PROT_DIST_SEND	0x21

// Fordert Slave auf eine Laufzeitmessung ab dem Triggersignal für die Abstandsmessung untereinander durchzuführen
// Antwort: <Code> <Ergebnis 4 Byte>
#define PROT_DIST_MES	0x22

// Errorcodes
#define PROT_NODATA		0x51


#endif

