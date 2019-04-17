
lsblk    # listar bloques
df -h    # ver espacio libre 

gdisk /dev/sdc    #PARTICIONAR DISCO > n > enter, enter, p
	pv -> pvcreate /dev/sdd1 /dev/sde1 /dev/sdf1
	vg -> vgcreate GRUPO /dev/sdd1 /dev/sde1 /dev/sdf1
	lv -> lvcreate -l +100%FREE GRUPO /dev/sdd1 /dev/sde1 /dev/sdf1 -n VOLUMEN


mkfs.xfs /dev/GRUPO/VOLUMEN #FORMATEAR volumen 
mkdir /mnt/CARPETA2 # Crear carpeta 
mount /dev/GRUPO/VOLUMEN /mnt/CARPETA2 #MONTAR

free -h  # ver memoria
