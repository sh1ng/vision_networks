#!/usr/bin/env bash

# 1M parameters
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=22;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=22 --look_back=7 --look_back_decay=1;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=22 --total_blocks=2;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=22 --total_blocks=4;

# 7M parameters
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=30 --depth=100 --look_back=9;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=30 --depth=100 --look_back=11 --look_back_decay=2;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=24 --depth=100 --look_back=14;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=24 --total_blocks=2 --depth=100 --look_back=15;
python3 run_smooth_net.py --train --test --dataset=C10+ --growth_rate=24 --total_blocks=4 --depth=100 --look_back=15;