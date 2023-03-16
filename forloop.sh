# num1=3
# num2=6

# function suma() {
#     sum=$(( $1 + $2 ))
#     return sum
# }

# value=suma num num2

# echo $value

function miFuncion() {
    suma=$(($1+$2))
    #return $suma;
}

miFuncion 2 8
#value=$?
echo $suma
