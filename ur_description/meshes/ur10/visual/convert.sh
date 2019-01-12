for file in *.dae; do
    meshlabserver -i "$file" -o "${file%.*}.obj" # -om vc
done
