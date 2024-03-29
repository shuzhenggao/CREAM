cd code
python run_causal.py \
    --output_dir=./saved_models\
    --model_type=roberta \
    --tokenizer_name=../microsoft/codebert-base \
    --model_name_or_path=../microsoft/codebert-base \
    --do_train \
    --train_data_file=../data/train.jsonl \
    --eval_data_file=../data/valid.jsonl \
    --test_data_file=../data/test.jsonl \
    --alpha 0.6 \
    --fusion 0.1 \
    --epoch 20 \
    --block_size 400 \
    --train_batch_size 32 \
    --eval_batch_size 64 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1 | tee train.log