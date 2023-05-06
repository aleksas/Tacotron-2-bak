python train.py --model='Tacotron-2' --name="Aiste" --tacotron_input="training_data_Aiste/train.txt" --input_dir="training_data_Aiste" --output_dir="output_Aiste"
python train.py --model='Tacotron-2' --name="Regina" --tacotron_input="training_data_Regina/train.txt" --input_dir="training_data_Regina" --output_dir="output_Regina"
python train.py --model='Tacotron-2' --name="Vladas" --tacotron_input="training_data_Regina/train.txt" --input_dir="training_data_Vladas" --output_dir="output_Vladas"
python train.py --model='Tacotron-2' --name="Edvardas" --tacotron_input="training_data_Edvardas/train.txt" --input_dir="training_data_Edvardas" --output_dir="output_Edvardas"
#> output.log 2>&1 & disown -a
#Tacotron-2is just for GTA to be gnerated
