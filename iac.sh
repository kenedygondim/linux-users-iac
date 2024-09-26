mkdir /publico
cd /publico
mkdir adm ven sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_ADM adm
chgrp GRP_VEN ven
chgrp GRP_SEC sec

chmod 770 adm
chmod 770 ven
chmod 770 sec

cd /
chmod 777 /publico

useradd carlos -c "Carlos" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 carlos
usermod -aG GRP_ADM carlos

useradd maria -c "Maria" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 maria
usermod -aG GRP_ADM maria

useradd joao -c "João" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 joao
usermod -aG GRP_ADM joao

useradd debora -c "Débora" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 debora
usermod -aG GRP_VEN debora

useradd sebastiana -c "Sebastiana" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 sebastiana
usermod -aG GRP_VEN sebastiana

useradd roberto -c "Roberto" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 roberto
usermod -aG GRP_VEN roberto

useradd josefina -c "Josefina" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 josefina
usermod -aG GRP_SEC josefina

useradd amanda -c "Amanda" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 amanda
usermod -aG GRP_SEC amanda

useradd rogerio -c "Rogerio" -s /bin/bash -p $(openssl passwd -6 "Senha123")
chage -d 0 rogerio
usermod -aG GRP_SEC rogerio
