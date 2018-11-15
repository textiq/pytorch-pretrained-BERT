export BERT_BASE_DIR=./uncased_L-12_H-768_A-12
python extract_features.py --input_file test_input_lines.txt \
  --vocab_file $BERT_BASE_DIR/vocab.txt \
  --output_file test_output.json \
  --bert_config_file $BERT_BASE_DIR/bert_config.json
  --init_checkpoint $BERT_BASE_DIR/pytorch_model.bin
  --max_seq_length 64
  --batch_size 1
