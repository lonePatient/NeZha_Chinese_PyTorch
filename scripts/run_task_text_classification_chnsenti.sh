CURRENT_DIR=`pwd`
export MODEL_DIR=$CURRENT_DIR/pretrained_models/chinese-nezha-base
export DATA_DIR=$CURRENT_DIR/dataset
export OUTPUR_DIR=$CURRENT_DIR/outputs
export TASK_NAME=chnsenticorp

#-----------training-----------------
python task_text_classification_chnsenti.py \
  --model_type=nezha \
  --model_path=$MODEL_DIR \
  --task_name=$TASK_NAME \
  --do_train \
  --gpu=0 \
  --monitor=eval_acc \
  --mcpt_mode=max \
  --do_save_best \
  --data_dir=$DATA_DIR/${TASK_NAME}/ \
  --train_max_seq_length=128 \
  --eval_max_seq_length=128 \
  --per_gpu_train_batch_size=32 \
  --per_gpu_eval_batch_size=32 \
  --learning_rate=4e-5 \
  --num_train_epochs=10.0 \
  --logging_steps=-1 \
  --save_steps=-1 \
  --output_dir=$OUTPUR_DIR/${TASK_NAME}_output/ \
  --overwrite_output_dir \
  --seed=42

