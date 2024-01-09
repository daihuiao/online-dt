num_online_rollouts=10
num_eval_episodes=10
adjust_temperature=0
replay_size=500
ordering=1
for max_pretrain_iters in 0
do
  for ppo_margin in 10.0 100.0
  do
    python3 main.py --max_pretrain_iters $max_pretrain_iters --ppo_margin $ppo_margin \
    --num_online_rollouts $num_online_rollouts \
     --num_eval_episodes $num_eval_episodes\
     --adjust_temperature $adjust_temperature\
     --replay_size $replay_size\
     --ordering $ordering\
     --device cuda:1
  done
done