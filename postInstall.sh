#!/bin/bash

clear

echo "Este Script realiza las siguientes acciones:

- Añade los repositorios rpmfusion, workstation 
- Instalación de drivers gráficos Intel y soporte multimendia
- Instalación de las siguientes aplicaciones:
  - htop, ranger, cmus, mpv, zathura, 7zip, Midnight Commander, cava, nvim (Aplicaciones en terminal) 
  - Google Chrome (Navegador web)
  - lxappareance (Gestionar apariencia facilmente en i3wm)
  - ligth (alternativa a Xbacklight) 
  - thunar-archive-plugin (gestor de plugin para thunar)
  - xarchiver (plugin de thunar para comprimir y descomprimir)

Se recomienda cerrar todas las aplicaciones antes de continuar.

Para cancelar presione ctrl+C 
Para continuar presione ENTER

@andriuzha"

read OK

clear
echo "Añadiendo repositorios adicionales"
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y groupupdate core
sudo dnf -y install dnf-plugins-core
sudo dnf -y install fedora-workstation-repositories

clear
echo "Repositorios adicionales añadidos con exito"
echo "Actualizando repositorios"
sudo dnf -y update

clear
echo "Repositorios adicionales añadidos con exito"
echo "Repositorios actualizados con exito"
echo "Añadiendo drives Intel"
sudo dnf -y install libtxc_dxtn --enablerepo=rpmfusion-free-updates-testing
sudo dnf -y install mesa-dri-drivers

clear
echo "Repositorios adicionales añadidos con exito"
echo "Repositorios actualizados con exito"
echo "Drives Intel instalados con exito"
echo "Habilitando soporte multimedia"
sudo dnf -y groupupdate multimedia
sudo dnf -y groupupdate sound-and-video

clear
echo "Repositorios adicionales añadidos con exito"
echo "Repositorios actualizados con exito"
echo "Drives Intel instalados con exito"
echo "Soporte multimedia habilitado"
echo "Instalando aplicaciones"
sudo dnf -y install htop nvim ranger cmus mpv mc light google-chrome-stable libtxc_dxtn lxappearance zathura zathura-pdf-mupdf links p7zip p7zip-plugins cava ffmpegthumbnailer tumbler thunar-archive-plugin xarchiver


clear
echo "Repositorios adicionales añadidos con exito"
echo "Repositorios actualizados con exito"
echo "Drives Intel instalados con exito"
echo "Soporte multimedia habilitado con exito"
echo "Aplicaciones instaladas correctamente"
echo "Proceso finalizado"
echo "Para salir presione Enter"
read
exit
