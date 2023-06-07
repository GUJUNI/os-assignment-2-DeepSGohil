echo -n "Enter the value of n: "
read n

generate_fibonacci() {
  local limit=$1
  local a=0
  local b=1
  local i=1

  echo "Fibonacci sequence up to $limit:"
  echo $a
  echo $b

  while [ $i -le $limit ]
  do
    next=$((a + b))
    echo $next

    a=$b
    b=$next
    i=$((i + 1))
  done
}

generate_fibonacci $n
