#!/bin/bash
#
clean() {
  rm -rf *.s
  rm -rf *.i
  rm -rf *.o
  rm -rf *.elf
  rm -rf *.bin
  rm -rf *.hex
  rm -rf *.map
  rm -rf *.d
}

all() {
  files=`ls *.c`
  for file in $files
  do
    output_name=`basename "$file" .c`
    gcc -E $file -o $output_name.i
    gcc -S $file -o $output_name.s -fverbose-asm -Os
    gcc -c $file -o $output_name.o
  done
}

if [ $# -eq 0 ]; then
  echo "No arguments provided. Please specify 'all' or 'clean'"
  exit 1
fi

case $1 in
  "all")
    all
    ;;
  "clean")
    clean
    ;;
  *)
    echo "Unsupported operation '$1'"
    exit 1
    ;;
esac
