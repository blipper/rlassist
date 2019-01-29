export PYTHONPATH=.
echo 'Preprocessing DeepFix dataset...'
python data_processing/preprocess.py
echo 'Generating training and validation dataset...'
python -O data_processing/training_data_generator.py
echo 'Converting DeepFix dataset to RLAssist format...'
python -O data_processing/deepfix_to_rlassist_test_data_converter.py