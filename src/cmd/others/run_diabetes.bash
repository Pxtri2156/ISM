python notears/xai_reg.py \
    --data_name='diabetes' \
    --root_path='/workspace/tripx/MCS/xai_causality/run/run_v4/diabetes/' \
    --data_path='/workspace/tripx/MCS/xai_causality/dataset/scaled_diabetes.csv' \
    --wandb_mode='online' \
    --lambda_reg=2 \
    --lambda1=0.002 \
    --lambda2=0.01 \
    --no_seeds=1


python notears/average_graph.py \
    --data_name='diabetes' \
    --root_path='/workspace/tripx/MCS/xai_causality/run/run_v4/diabetes/' 