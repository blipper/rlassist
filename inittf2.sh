echo y | conda create -n rlassist38 python=3.8
conda install -c apple tensorflow-deps
source activate rlassist38
pip install --upgrade pip
pip install scipy cython unqlite psutil subprocess32 regex tensorflow tf_slim