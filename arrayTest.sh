cnt=0;
animal[((cnt++))]="Lion";
animal[((cnt++))]="Tiger";
animal[((cnt++))]="Dog";
animal[((cnt++))]="Lion";
animal[((cnt++))]="Tiger";
animal[((cnt++))]="Dog";
animal[((cnt++))]="Lion";
animal[((cnt++))]="Tiger";
animal[((cnt++))]="Dog";

echo ${animal[@]};
echo "Array size of animal : ${#animal[@]}"
bird=("Pigeon" "Crow" "Eagle");
echo ${bird[@]};

echo ${animal[1]};
