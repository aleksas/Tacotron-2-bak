wget https://github.com/aleksas/liepa_dataset/blob/master/other/regina_transcript_stressed.txt -O Regina/db_tr.txt
python preprocess.py --dataset='liepa-multi' --voice='Regina' --output='training_data_Regina'

wget https://github.com/aleksas/liepa_dataset/blob/master/other/aiste_transcript_stressed.txt -O Aiste/db_tr.txt
python preprocess.py --dataset='liepa-multi' --voice='Aiste' --output='training_data_Aiste'

wget https://github.com/aleksas/liepa_dataset/blob/master/other/edvardas_transcript_stressed.txt -O Edvardas/db_tr.txt
python preprocess.py --dataset='liepa-multi' --voice='Edvardas' --output='training_data_Edvardas'

wget https://github.com/aleksas/liepa_dataset/blob/master/other/vladas_transcript_stressed.txt -O Vladas/db_tr.txt
python preprocess.py --dataset='liepa-multi' --voice='Vladas' --output='training_data_Vladas'
