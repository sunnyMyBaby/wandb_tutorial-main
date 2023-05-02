该源码地址： https://github.com/huangshiyu13/wandb_tutorial

# wandb 使用教程

wandb 是一个免费的，用于记录机器学习训练过程数据的工具。具有用户管理，团队管理，项目管理等功能。

- [知乎教程](https://www.zhihu.com/column/c_1494418493903155200)

## 0. 环境设置

- Ubuntu or Red Hat
- tmux
- Python3
- `pip install -r requirements.txt`

## 1. 基础使用方法

该部分的详细教程见：[wandb 使用教程(一)：基础用法](https://zhuanlan.zhihu.com/p/493093033)

- 展示训练曲线示例: [test_curves.sh](./basic/test_curves.sh)
- 展示图片示例: [test_images.sh](./basic/test_images.sh)
- 展示视频示例: [test_videos.sh](./basic/test_videos.sh)
- 展示 matplotlib 画图示例：[test_matplot.sh](./basic/test_matplot.sh)
- 展示表格示例: [test_tables.sh](./basic/test_tables.sh)
- 展示多进程 group 示例: [test_multi_process.sh](./basic/test_multi_process.sh)
- 展示 html 示例: [test_html.sh](./basic/test_html.sh)
- PyTorch 集成示例: [test_pytorch.sh](./basic/test_pytorch.sh)

## 2. 超参数搜索

该部分的详细教程见：[wandb 使用教程(二)：基于 Launchpad 实现分布式超参搜索](https://zhuanlan.zhihu.com/p/496164470)

在机器学习任务中，通常涉及众多超参数，因此需要对这些超参数进行调整。wandb 提供了超参数搜索的功能。然而，wandb 更多是
提供参数搜索安排和可视化的功能，本身并没有提供分布式能力。因此，这里提供了一个结合[Launchpad](https://github.com/deepmind/launchpad)
和 wandb 的方式，来进行并行(或者分布式) 的超参数搜索。

注意：由于 launchpad 没有提供多机的分布式实现，因此如果在多台服务器或者 k8s 集群上实现
多机并行的超参数搜索，可以考虑使用[TLaunch](https://github.com/TARTRL/TLaunch) 。

- 基础使用例子: [test_sweep.sh](./sweep/launchpad/test_sweep.sh)，该例子提供了最小的 wandb 和 launchpad 结合
  使用的例子。
- 为 CNN 分类任务搜索 dropout 超参数: [test_sweep.sh](./sweep/cnn/test_sweep.sh), 该例子提供一个以 MNIST 分类任务为基础，
  搜索其 dropout 参数的例子。

## 3. 数据和模型管理

wandb 还提供了数据和模型备份管理的功能，该部分详细教程见：[wandb 使用教程(三)：数据与模型管理](https://zhuanlan.zhihu.com/p/503226955)

- 基础使用例子: [test_artifcat.sh](./artifact/test_artifact.sh)，该例子提供了一个备份 MNIST 训练数据的例子。

## 4. wandb 本地部署

wandb 还提供了服务器本地部署的功能，该部分详细教程见：[wandb 使用教程(四)：wandb 本地部署](https://zhuanlan.zhihu.com/p/521663928)

## Citing wandb_tutorial

If you use wandb_tutorial in your work, please cite us:

```bibtex
@article{huangshiyu2022wandb,
    title={wandb Tutorial},
    author={Shiyu Huang},
    year={2022},
    howpublished={\url{https://github.com/huangshiyu13/wandb_tutorial}},
}
```

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=huangshiyu13/wandb_tutorial&type=Date)](https://star-history.com/#huangshiyu13/wandb_tutorial&Date)
