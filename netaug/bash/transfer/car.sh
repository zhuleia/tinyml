# mbv2-0.35
torchpack dist-run -np 4 python train.py configs/default.yaml \
	--data_provider "{dataset:car,base_batch_size:64}" \
	--model "{dropout_rate:0.5}" \
	--run_config "{n_epochs:50,base_lr:0.18}" \
	--init_from <path_of_pretrained_weight> \
	--path <exp_path>

# mcunet
torchpack dist-run -np 4 python train.py configs/default.yaml \
	--data_provider "{dataset:car,base_batch_size:64,image_size:176}" \
	--model "{dropout_rate:0.1,name:mcunet}" \
	--run_config "{n_epochs:50,base_lr:0.25}" \
	--init_from <path_of_pretrained_weight> \
	--path <exp_path>

# proxylessnas-0.35
torchpack dist-run -np 4 python train.py configs/default.yaml \
	--data_provider "{dataset:car,base_batch_size:64}" \
	--model "{dropout_rate:0.2,name:proxylessnas-0.35}" \
	--run_config "{n_epochs:50,base_lr:0.20}" \
	--init_from <path_of_pretrained_weight> \
	--path <exp_path>

# mbv3-0.35
torchpack dist-run -np 4 python train.py configs/default.yaml \
	--data_provider "{dataset:car,base_batch_size:64}" \
	--model "{dropout_rate:0.7,name:mbv3-0.35}" \
	--run_config "{n_epochs:50,base_lr:0.10,weight_decay:3.0e-5}" \
	--init_from <path_of_pretrained_weight> \
	--path <exp_path>

# tinymbv2
torchpack dist-run -np 4 python train.py configs/default.yaml \
	--data_provider "{dataset:car,base_batch_size:64,image_size:144}" \
	--model "{dropout_rate:0.2,name:tinymbv2}" \
	--run_config "{n_epochs:50,base_lr:0.14}" \
	--init_from <path_of_pretrained_weight> \
	--path <exp_path>
