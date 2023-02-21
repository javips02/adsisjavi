# adsisjavi

Repositorio para ir sincronizando la carpeta adsis en local con la máquina virtual debian

## Tutorial básico de git

### 1. Clonar y editar

Para clonar, usa el comando git clone (url)

¡Ojo! --> Es mejr usar el link ssh, sino desde la terminal no verifica.

### 2. Guardar cambios

Para guardar cambios realizados en tu sesión de trabajo, tienes que añadir los ficheros nuevos y cambiados a git y hacer un commit; lo puedes hacer todo con un sólo comando:

git commit -a -m "comentarios"

*Si has crado archivos nuevos, ejecuta primero git add . Y PON EL PUNTO '.'*

### 3. Subir los cambios a un repositorio online

Para subir los cambios a github, haz un git push (como va con ssh, si ya tienes la key guardada no te pedirá ningún tipo de autenticación).

### 4. Coger los cambios del respositorio y pasarlos a local

Para actualizar tu repo local con los últimos cambios, primero mira lo que se ha hecho:

git fetch origin

Una vez estés seguro, ejecuta:

git pull


