echo 'Find in file'
grep 'housing' words

echo "List file numbers"
grep 'housing' -n words

echo "List 2 lines before and after housing"
grep  -C 2 'housing' words

echo "List 3 before and two after wayhouse"
grep  -B 3 -A 2 'wayhouse' words

# -q makes sure nothing is printed
if grep -q doghouse words;
  then
    echo "word exists"
    # opens editor on correct line
    line=$(grep doghouse words -n | cut -d ':' -f 1)
    nano "+$line" words
  else
    echo "word not found"
fi
