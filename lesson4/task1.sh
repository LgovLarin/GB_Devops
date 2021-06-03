if [ $# != 1 ]
then
	echo Должен быть один параметр
 	echo Формат использования
 	echo $0 file
 	exit 1
 fi
  
 file=$1
 if [ -e $file ]
 then
 	tr -s '\n' < $file | tr "[:lower:]" "[:upper:]" > temp
	mv temp $file 
 else
 	echo Файл $file не найден
 	exit 1
 fi
