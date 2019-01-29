echo
echo 'Setting up a new virtual environment...'
echo
echo y | conda create -n rlassist38 python=3.8
source activate rlassist38
pip install --upgrade pip scipy cython unqlite psutil subprocess32 regex tensorflow tf_slim pydot graphviz
mkdir logs
mkdir data/network_inputs
mkdir data/iitk-dataset
mkdir data/checkpoints
echo 'done!'

echo
echo 'Downloading DeepFix dataset...'
wget https://www.cse.iitk.ac.in/users/karkare/prutor/prutor-deepfix-09-12-2017.zip -P data/
cd data
unzip prutor-deepfix-09-12-2017.zip
mv prutor-deepfix-09-12-2017/* iitk-dataset/
rm -rf prutor-deepfix-09-12-2017 prutor-deepfix-09-12-2017.zip
cd iitk-dataset/
gunzip prutor-deepfix-09-12-2017.db.gz
mv prutor-deepfix-09-12-2017.db dataset.db
cd ../..