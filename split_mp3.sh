#!/usr/bin/env bash


# Verificar si se proporcionaron los parámetros necesarios
if [ $# -lt 2 ]; then
    echo "Uso: $0 <nombre_del_archivo> <duracion_del_fragmento_en_minutos>"
    exit 1
fi

file_name="$1"
duration_minutes="$2"

# Verificar si el archivo existe
if [ ! -f "$file_name" ]; then
    echo "El archivo $file_name no existe."
    exit 1
fi

# Obtener el nombre del archivo sin la extensión
file_name_no_ext="${file_name%.*}"

# Crear directorio para almacenar los fragmentos
mkdir -p "$file_name_no_ext"

# Convertir la duración de minutos a segundos
duration_seconds=$((duration_minutes * 60))

# Cortar el archivo en fragmentos más cortos
ffmpeg -i "$file_name" -f segment -segment_time "$duration_seconds" -c copy -map 0 -segment_format mp3 "$file_name_no_ext/%02d.mp3"

echo "El archivo $file_name se ha dividido en fragmentos de $duration_minutes minutos."
