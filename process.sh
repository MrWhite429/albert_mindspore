# tensorflow model→numpy weight
# python convert_tf_ckpt/read_weight_tf.py  --ckpt_file_path=/home/ma-user/work/albert/albert_large/model.ckpt-best --output_path=/home/ma-user/work/albert/npy_model/albert_large

# numpy weight→mindspore model
# python convert_tf_ckpt/save_weight_ms.py --load_dir=npy_model/albert_large/ --output_file_name=mindspore_model/albert_large/albert_large

# mindspore dataset
# bash scripts/convert_finetune_datasets_squad.sh

# finetune
# bash scripts/run_squad_train.sh

# evaluation
# bash scripts/run_squad.sh

# show in line
bash scripts/run_squad_show.sh