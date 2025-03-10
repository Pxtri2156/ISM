python notears/xai_cls_custom.py \
    --data_name='adult_income' \
    --root_path='/workspace/tripx/MCS/xai_causality/run/run_tuning/adult_income/' \
    --data_path='/workspace/tripx/MCS/xai_causality/dataset/adult_income/new_adult_income.csv' \
    --wandb_mode='online' \
    --lambda_cls=1 \
    --lambda1=0.001 \
    --lambda2=0.001 \
    --no_seeds=1