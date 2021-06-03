mkdir -p {2010..2017}/{01..12}/
for i in {2010..2017}
do
for j in {01..12}
do
for k in {001..010}
do
echo Файл $k > $i/$j/$k.txt
done
done
done
