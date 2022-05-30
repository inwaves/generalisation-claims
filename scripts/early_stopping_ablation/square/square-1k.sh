set -x #echo on
start=$(date +%s)
num_iter=1

for ((i=1;i<=num_iter;i++))
do
  python3 1d_regression.py --tag=sq-no-es-1000 --dataset=square --generalisation_task=baseline --model_type=ASIShallowRelu --hidden_units=1000 --learning_rate=0.001 --adjust_data_linearly=True --early_stopping=False --num_epochs=100000
done

end=$(date +%s)

runtime=$((end-start))

echo $runtime
