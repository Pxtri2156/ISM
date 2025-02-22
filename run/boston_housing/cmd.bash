python notears/xai_reg.py \
    --data_name='boston_housing_v2' \
    --root_path='/workspace/tripx/MCS/ISM/run/boston_housing/' \
    --data_path='/workspace/tripx/MCS/xai_causality/dataset/new_scale_boston.csv' \
    --wandb_mode='disabled' \
    --lambda_reg=3 \
    --lambda1=0.004 \
    --lambda2=0.005 \
    --no_seeds=20

# python notears/average_graph.py \
#     --data_name='cali_housing' \
#     --root_path='/workspace/tripx/MCS/xai_causality/run/run_v11/boston_housing_v2/' 