cp -r ../liepa_dataset/MII_LIEPA_SYN_V1/* .

curl https://raw.githubusercontent.com/aleksas/liepa_dataset/master/other/regina_transcript_stressed_punctuated.txt -o Regina/db_tr.txt
curl https://raw.githubusercontent.com/aleksas/liepa_dataset/master/other/aiste_transcript_stressed_punctuated.txt -o Aiste/db_tr.txt
curl https://raw.githubusercontent.com/aleksas/liepa_dataset/master/other/edvardas_transcript_stressed_punctuated.txt -o Edvardas/db_tr.txt
curl https://raw.githubusercontent.com/aleksas/liepa_dataset/master/other/vladas_transcript_stressed_punctuated.txt -o Vladas/db_tr.txt

python preprocess.py --dataset='liepa-multi' --voice='Regina' --output='training_data_Regina'
python preprocess.py --dataset='liepa-multi' --voice='Aiste' --output='training_data_Aiste'
python preprocess.py --dataset='liepa-multi' --voice='Edvardas' --output='training_data_Edvardas'
python preprocess.py --dataset='liepa-multi' --voice='Vladas' --output='training_data_Vladas'
