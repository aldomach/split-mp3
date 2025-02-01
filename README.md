# split-mp3
# Guía para fragmentar archivos de audio usando `pydub` y `ffmpeg`

## Introducción

Este script en Python utiliza la biblioteca `pydub` para fragmentar un archivo de audio M4A en segmentos más pequeños y los guarda como archivos MP3. Es una herramienta útil para dividir grabaciones largas en partes manejables.

## Requisitos

Para usar este script, necesitas tener instalado `ffmpeg`, ya que `pydub` depende de esta herramienta para la manipulación de archivos de audio.

### Instalación de `ffmpeg`

Para instalar `ffmpeg`, puedes seguir los siguientes pasos:

#### En Windows

1. Descarga `ffmpeg` desde [aquí](https://ffmpeg.org/download.html).
2. Extrae el contenido del archivo zip descargado.
3. Añade la ruta de la carpeta `bin` de `ffmpeg` a las variables de entorno del sistema.

#### En macOS

```sh
brew install ffmpeg
```

#### En Linux

```sh
sudo apt-get install
```

### Instalación de pydub
```sh
Instala la biblioteca pydub usando pip
```

### Cómo Ejecutar el Script
Guarda el script en un archivo llamado fragmentar_audio.py.

Abre una terminal y navega al directorio donde guardaste el archivo.

Ejecuta el script usando Python:
```sh
python split_audio.py
```


