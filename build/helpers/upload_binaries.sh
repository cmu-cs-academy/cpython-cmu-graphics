cd pycairo_build
tar -zcvf binaries.tgz .
python3 -m pip install --upgrade awscli
aws s3 cp binaries.tgz $UPLOAD_BUCKET/cpython-cmu-graphics-binaries/binaries.tgz
cd ..
rm -rf pycairo_build
