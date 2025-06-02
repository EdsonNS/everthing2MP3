# everthing2MP3
Português:
------------------
Converte formatos de arquivos audiovisuais utilizando o arrastar e soltar do mouse.  
Aqui foi utilizado para converter para MP3, mas você pode mudar o tipo de arquivo desejado (WAV, FLAC, AAC, OGG, AIFF, WMA e MIDI)

Como utilizar:
Selecione um ou mais arquivos e arraste e solte sobre o arquivo "everthing2MP3.vbs", então os arquivos serão criados na mesma pasta do arquivo de origem mas em formato MP3

Pré-requisitos:  
1-Ter o FFMPEG instalado no computador (https://ffmpeg.org/)  
2-Sistema Operacional Window  
3-Estar habilitado a execução de scripts VBS (Visual Basic Script) no Windows.

Configuração Inicial:

Abra o bloco de notas e edite o arquivo "everthing2MP3.vbs", substituindo 
'CONST FILE_FFMPEG = "C:\ffmpeg\bin\ffmpeg.exe"' pelo caminho onde está instalado o FFMPEG.
Caso queira mudar o formato do arquivo de saída, em vez de ser MP3, então edite a linha que contem: 
'CONST TYPE_OUT = ".mp3"'

English:
------------------
Convert audiovisual file formats using mouse drag and drop.  
Here it was used to convert to MP3, but you can change the desired file type (WAV, FLAC, AAC, OGG, AIFF, WMA and MIDI)

How to use:
Select one or more files and drag and drop them over file "everthing2MP3.vbs", then the files will be created in the same folder as the source file but in MP3 format

Prerequisites:  
1-Have FFMPEG installed on your computer (https://ffmpeg.org/)  
2-Window Operating System  
3-Have the ability to run VBS (Visual Basic Script) scripts on Windows.  

Initial Configuration:
Open Notepad and edit the file "everthing2MP3.vbs", replacing 
'CONST FILE_FFMPEG = "C:\ffmpeg\bin\ffmpeg.exe"' with the path where FFMPEG is installed.
If you want to change the output file format, instead of being MP3, then edit the line that contains:
'CONST TYPE_OUT = ".mp3"'
