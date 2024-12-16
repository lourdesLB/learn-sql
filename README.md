# Aprende SQL

Este proyecto contiene una base de datos para practicar consultas SQL. Está diseñada para ser ejecutada en un entorno replicable utilizando Docker.


## Arrancar el proyecto

1. Descarga e instala las siguientes herramientas en tu sistema: 
    - [Anaconda](https://www.anaconda.com/products/distribution): proporciona una plataforma robusta para la gestión de entornos Python.
    - [Docker Desktop](https://www.docker.com/products/docker-desktop) (Windows/Mac) o [Docker](https://docs.docker.com/engine/install/) (Linux).
    - [Git](https://git-scm.com/).

    1.1. Linux: desde terminal introduce los siguientes comandos.
        ```bash
        # Docker
        sudo apt update
        sudo apt install docker.io docker-compose
        sudo systemctl start docker
        sudo systemctl enable docker

        # Git
        sudo apt install git

        # Anaconda
        conda env create -file config/python-environment.yml
        ```

    1.2. Windows: accede a la página oficial, descarga los instaladores y efectúa la instalación. Abre la aplicación Docker Desktop.

2. Clona el repositorio en tu máquina local
```bash
git clone https://github.com/lourdesLB/learn-sql.git
cd learn-sql
```

3. Crea y levanta el contenedor de la base de datos:
```bash
docker-compose -f config/docker-compose.yml up -d
```

4. Abre el cuaderno `exercises/exercises.ipynb` con Jupyter Notebook y con el entorno anteriormente creado `sql-pyenv`.


## Autoría, referencias y contribuciones
Este proyecto ha sido desarrollado por Lourdes Linares. Puedes encontrarme en [LinkedIn](https://www.linkedin.com/in/lourdes-linares-barrera/).

Para el ejemplo de base de datos y los datos, se han utilizado los recursos de las transparencias [https://mebrahimii.github.io/comp440-spring2020/lecture/week_6/SQL_Practice.pdf](https://mebrahimii.github.io/comp440-spring2020/lecture/week_6/SQL_Practice.pdf) por las que agradecemos al autor.

Si deseas contribuir al proyecto, ¡házmelo saber! 😊 Puedes añadir ejercicios (abriendo un pull request) o reportar problemas en la sección de Issues.

