#!/bin/bash

object='object.o'
executable='executable'

nasm -f elf64 -o ${object}  $1 
ld  ${object} -o ${executable}
./${executable}

rm -r ${object}

