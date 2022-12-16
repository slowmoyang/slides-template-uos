for each in ~/workspace/VBF-SUSY-0L/plots/Syst-*; do
    name=$(basename ${each})
    mkdir -vp ./${name}
    mv -v ${each}/output/*.{pdf,png} ./${name}
done
