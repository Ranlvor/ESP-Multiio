Mechanical
==========

Achtung: Eines der Haltelöscher ist nicht 5mm / 5mm vom Rand entfernt! Das 3D-Druck-Gehäuse geht davon aus, dass alle Löscher 5mm/5mm vom Rand entfernt sind und muss noch angepasst werden.

BOM
===

zwingend Nötig
--------------

Bezeichnung | Beschreibung
------------|--------------
U1          | Wemos D1 Mini


notwendig für LEDs und Schalter
-------------------------------

Bezeichnung                    | Beschreibung                        | Package
-------------------------------|-------------------------------------|-----------------
D1, D2, D3, D4, D5, D6, D7, D8 | LEDs                                | 3mm Through Hole
R1, R2, R3, R4, R5, R6, R7, R8 | Vorwiderstände passend zu den LEDs  | 1206 SMD
U2                             | MCP23017                            | DIP-28
C1                             | Kondensator ca. 100 nF              | 1206 SMD

notwendig für IR receive (getestet, hat nicht funktioniert)
-----------------------------------------------------------

Bezeichnung | Beschreibung                        | Package
------------|-------------------------------------|-----------------
U4          | TL1838                              | TSOP1838
C2          | Kondensator ca. 100 nF              | 1206 SMD
R11         | Widerstand 33 kΩ                    | 1206 SMD
R12         | Widerstand 100 Ω                    | 1206 SMD

notwendig für IR send (ungetestet)
----------------------------------

Bezeichnung | Beschreibung                        | Package
------------|-------------------------------------|-----------------
D-IR1       | IR-LED                              | 3mm Through Hole
Q1          | NPN-Transistor (z.B. BC337)         | TO-92
R10         | Widerstand 53 Ω                     | 1206 SMD
R9          | Widerstand 2.1 kΩ                   | 1206 SMD
