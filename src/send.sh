conda activate pcc &&
export LD\_LIBRARY\_PATH=$LD\_LIBRARY\_PATH:`pwd`/core/ &&
./app/pccclient send 127.0.0.1 9000 --pcc-rate-control=python -pyhelper=loaded\_client -pypath=/home/alex/PCC-RL/src/udt-plugins/testing/ --history-len=10 --pcc-utility-calc=linear --model-path=/home/alex/PCC-RL/src/gym/model_A
