python notears/xai_reg.py \
    --data_name='friedman1' \
    --root_path='/workspace/tripx/MCS/xai_causality/run_v2/fried_man1/' \
    --data_path='/workspace/tripx/MCS/xai_causality/dataset/scaled_friedman1.csv' \
    --wandb_mode='disabled' \
    --lambda_reg=2 \
    --lambda1=0.0002 \
    --lambda2=0.01 \
    --no_seeds=20

python notears/average_graph.py \
    --data_name='friedman1' \
    --root_path='/workspace/tripx/MCS/xai_causality/run_v2/fried_man1/' 