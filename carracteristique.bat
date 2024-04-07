@echo off
echo Caractéristiques du PC :
echo -----------------------

echo Nom de l'ordinateur :
hostname

echo.
echo Utilisateur actuel :
echo %USERNAME%

echo.
echo Système d'exploitation :
systeminfo | find "OS Nom:"

echo.
echo Version du système d'exploitation :
systeminfo | find "Version du système:"

echo.
echo Fabricant du système :
systeminfo | find "Fabricant du système:"

echo.
echo Modèle du système :
systeminfo | find "Modèle du système:"

echo.
echo Type de processeur :
systeminfo | find "Processeur(s):"

echo.
echo Mémoire physique installée :
systeminfo | find "Mémoire physique totale:"

echo.
echo Carte graphique :
wmic path win32_videocontroller get caption

echo.
echo Carte réseau :
wmic nic get Name

echo.
echo Capacité du disque dur principal :
wmic diskdrive get caption,size

echo.
echo Liste des processus en cours d'exécution :
tasklist

echo.
echo Liste des connexions réseau actives :
netstat -ano

pause
