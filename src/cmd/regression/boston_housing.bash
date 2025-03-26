python ism/xai_reg.py \
    --data_name='boston_housing_v2' \
    --root_path='../run/boston_housing/' \
    --data_path='../dataset/boston_housing.csv' \
    --wandb_mode='disabled' \
    --lambda_reg=3 \
    --lambda1=0.004 \
    --lambda2=0.005 \
    --no_seeds=5