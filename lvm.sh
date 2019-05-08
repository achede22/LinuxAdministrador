
lsblk    # listar bloques
df -h    # ver espacio libre 

lsblk    # listar bloques
df -h    # ver espacio libre 
gdisk /dev/sdc    #PARTICIONAR DISCO > n > enter, enter, p

free -h  # ver memoria

MONTAR
mount /dev/GRUPO/VOLUMEN /mnt/CARPETA2 #MONTAR
mkdir /mnt/CARPETA2 # Crear carpeta 

FORMATEAR EN ext4
mkfs.xfs /dev/GRUPO/VOLUMEN #FORMATEAR volumen 
		lv -> lvcreate -l +100%FREE GRUPO /dev/sdd1 /dev/sde1 /dev/sdf1 -n VOLUMEN
		vg -> vgcreate GRUPO /dev/sdd1 /dev/sde1 /dev/sdf1
		pv -> pvcreate /dev/sdd1 /dev/sde1 /dev/sdf1
FORMATEAR EN LVM
PARTICIONAR
gdisk /dev/sdb
