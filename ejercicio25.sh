#!/bin/bash

usuarios=()
for i in $( getent group users | cut -d: -f4 ); do
    usuarios+=$i
    echo "Usuarios: ${#usuarios[*]}"
done

echo "Usuarios: ${usuarios[*]}"