

# Actualizaciones de la base de datos de Pumpout

Descarga la base de datos de **Phoenix 2** 1.00: https://github.com/aaaaaa2493/pumpout-db-updates/releases/download/Phoenix-2-1.00/pumpout-phoenix-2-1.00.db

### Cómo realizar una actualización 
Por el momento, lo hago regularmente, así que no tienes que hacerlo

1. Copia las notas de parche de [piugame.com](piugame.com) en el archivo `patchnote.txt`. Elimina la información innecesaria (como el texto `Exclusive song for premium only`). Ejemplo de nota de parche: https://piugame.com/phoenix_notice?wr_id=236
2. Edita la variable `PATCH_VERSION` en [patchnote_parser.py](patchnote_parser.py)
3. Ejecuta [patchnote_parser.py](patchnote_parser.py)
4. Copia el contenido que está antes de la línea (`----`) en [data.py](data.py) dentro de las variables `STEPMAKERS` y `KOREAN_TITLES`. Completa la información sobre los stepmakers y los títulos en coreano basándote en el [canal oficial de YouTube](https://www.youtube.com/@PUMPITUPOfficial)
5. Copia el contenido que está después de la línea (`----`) en [data.py](data.py) dentro de la variable `data` justo al principio como primeras entradas. Verifica la corrección
6. Agrega la nueva versión del parche en la variable `patches` de [main.py](main.py)
7. Ejecuta [main.py](main.py) y obtén el archivo `.sql` en la carpeta `sql`.
8. Copia la base de datos más reciente de la carpeta `db` y nómbrala con el nombre del último parche
9. Ejecuta la consulta SQL con el archivo `.sql` generado sobre el nuevo archivo `db`
10. Copia las imágenes en las carpetas `img_big` y `img`. Los archivos en la carpeta `img` deben tener un ancho de 250 px o menos.

Cómo obtener las imágenes:
- Usa [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- Usa los videos teaser de actualizaciones de contenido del [canal oficial de YouTube](https://www.youtube.com/@PUMPITUPOfficial). Asegúrate de que no haya marca de agua (por ejemplo, el logotipo de Phoenix)
- En caso de que no haya una buena vista previa, usa el [canal NEVSISTER](https://www.youtube.com/@NEVSISTER). Asegúrate de eliminar la información del stepmaker de las esquinas
- Si no puedes eliminar a los stepmakers de las esquinas, copia las vistas previas de las canciones de otro lugar.
- Usa el siguiente comando:
```bash
yt-dlp -f bestvideo+bestaudio --merge-output-format mkv --extractor-args youtube:player_client=android -o 1.mkv https://www.youtube.com/watch?v=rcdPlWC_5mo && ffmpeg -ss 1:28 -i 1.mkv -vframes 1 Phoenix_Curiosity_Overdrive.png && rm 1.mkv
```
1. Reemplaza `https://www.youtube.com/watch?v=rcdPlWC_5mo` con el video real
2. Reemplaza `1:28` con el minuto:segundo real de la vista previa de la canción
3. Reemplaza `Phoenix_Curiosity_Overdrive.png` con el nombre de archivo real generado en el archivo SQL (busca en la base de datos después de aplicar el parche SQL)
4. Obtendrás una imagen exactamente al inicio del segundo deseado del video.

Ejemplo de cambios para el parche 1.05 de Phoenix: [commit](https://github.com/aaaaaa2493/pumpout-db-updates/commit/345732013181cad314ff54afce22eb6a9c7c78c9)
