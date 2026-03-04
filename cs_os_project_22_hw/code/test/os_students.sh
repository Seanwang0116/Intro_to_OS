make distclean
make 
rm -f *.o *.ii
rm -f *.coff
echo "=========================="
timeout 1 ../build.linux/nachos -e mp4_consoleIO_1 -e mp4_consoleIO_2 
echo "=========================="
timeout 1 ../build.linux/nachos -e mp4_consoleIO_3 -e mp4_consoleIO_4
echo "done"