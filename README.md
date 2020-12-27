## NeZha_Chinese_PyTorch

pytorch版NEZHA，适配transformers

论文下载地址: [NEZHA: Neural Contextualized Representation for Chinese Language Understanding](https://arxiv.org/abs/1909.00204)

### 运行脚本依赖模块

如果需要运行该example脚本，需要安装以下模块：

1. [trainsformers>=4.1.1](https://github.com/huggingface/transformers)
2. [TorchBlocks](https://github.com/lonePatient/TorchBlocks)

### 模型权重下载

官方提供的Tensorflow版本权重下载地址：[huawei-noah](https://github.com/huawei-noah/Pretrained-Language-Model/tree/master/NEZHA-TensorFlow)

已经转化为PyTorch版本权重下载地址如下：

* nezha-cn-base [百度网盘链接](https://pan.baidu.com/s/1sPC-FZJ20RtTEw9UX_4sDw) 提取码: hckq 

* nezha-large-zh [百度网盘链接](https://pan.baidu.com/s/1ASg6xJeaO6dfxdeq0ozZ5w) 提取码: qks2

* nezha-base-www [百度网盘链接](https://pan.baidu.com/s/1itZ_wdU6JdpXx2saK_zQhw) 提取码: ysg3

* nezha-large-www [百度网盘链接](https://pan.baidu.com/s/1_QdimUFM9dD3q4JtAlAU3g) 提取码: 8dig

### 运行

执行命令:
```shell
sh scripts/run_task_text_classification_chnsenti.sh
```
### 结果

| NEZHA(base-www) | chnsenti  |
| --------------- | --------- |
| tensorflow      | 94.75     |
| pytorch         | **94.92** |


